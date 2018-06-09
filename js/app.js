document.addEventListener('DOMContentLoaded', function(){


    let username = document.querySelector("meta[name='session']").getAttribute('content');
    let getXhr = () => {
        let xhr;
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
            if (xhr.overrideMimeType) {
                xhr.overrideMimeType('text/xml');
            }
        } else if (window.ActiveXObject) {
            try {
                xhr = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    xhr = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {
                    setFlash('erreur');
                }
            }
        }

        if (!xhr) {
            return false;
        }
        return xhr;
    }

    let setFlash = (message) => {
        Materialize.toast(message, 2000);
    }


    class Chat {

        constructor(container, form) {
            this.container = document.querySelector(container);
            this.form = document.querySelector(form);

            if (this.container === null && this.form === null) {
                throw new Error("The message container or the chat form doesn't exists...");
                setFlash('Ops something went wrongs');
            }
        }

        init() {
            this.form.addEventListener('submit', (e) => {
                e.preventDefault();
                e.stopPropagation();

                let message = this.form.querySelector('textarea').value;
                if (message.length > 0) {
                    if (getXhr()) {
                        let xhr = getXhr();
                        let data = new FormData();
                        data.append('name', username);
                        data.append('message', message);

                        xhr.open('POST', 'chat.php', true);
                        xhr.setRequestHeader('X-Requested-With', 'xmlhttprequest');
                        xhr.onreadystatechange = () => {
                            if (xhr.readyState === 4) {
                                if (xhr.status === 200) {
                                    this.inject(xhr.responseText);
                                    this.refresh();
                                    return true;
                                } else {
                                    setFlash('Oups une erreur est survenue, Vérifiez votre connexion internet...');
                                    return false;
                                }
                            }
                        }
                        xhr.send(data);
                    } else {
                        setFlash('Votre navigateur, ne supporte pas notre chat...');
                        return false;
                    }
                } else {
                    setFlash('Votre msg est vide !!!');
                    return false;
                }
            })
        }


        inject(data) {
            if(typeof data !== 'object') {
                data = JSON.parse(data);
            }


            let messageWrapper = document.createElement('div');


             messageWrapper.classList.add('message-wrapper', 'them', 'animated', 'bounceInLeft');
             messageWrapper.setAttribute('id', data.id);
             let text =
                `<div class="card text-wrapper">
                    <strong>${data.name}</strong><br>
                    <p>${data.message}</p></div>
                </div>`;

            if (data.name == username) {
                messageWrapper.classList.remove('them','bounceInLeft');
                messageWrapper.classList.add('message-wrapper','me','animated', 'bounceInRight');
                text =
                `<div class="card white text-wrapper">
                    <strong>${data.name}</strong><br>
                    <p>${data.message}</p></div>
                </div>`;
            }

            messageWrapper.innerHTML = text;
            this.form.querySelector('textarea').value = '';
            this.container.insertBefore(messageWrapper, this.container.firstChild);
        }


        loadMessages(data) {
            data = JSON.parse(data);
            if (data.length > 0) {
               for(let i = 0; i < data.length; i++) {
                   this.inject(data[i]);
               }
            } else {
                return false;
            }
        }


        refresh(lastId = null) {

            let lastMessageId = (lastId === null) ? this.container.firstElementChild.id : lastId
            if(lastMessageId !== null) {
                if(getXhr()) {
                    let xhr = getXhr();
                    xhr.open('GET', `src/refresh.php?lastId=${lastMessageId}`, true);
                    xhr.setRequestHeader('X-Requested-With', 'xmlhttprequest');
                    xhr.onreadystatechange = () => {
                        if(xhr.readyState === 4) {
                            if (xhr.status === 200) {
                                this.loadMessages(xhr.responseText);
                            } else {
                                setFlash('Impossible de récupéré les nouveaux msg, vérifiez votre connexion internet...');
                                return false;
                            }
                        }
                    }
                    xhr.timeout = 15000;
                    xhr.send();
                } else {
                    setFlash('Votre navigateur, ne supporte pas notre chat...');
                    return false;
                }
            } else {
                return false;
            }
        }
    }


    const chat = new Chat('#content','form');
    chat.init();
    let timer = window.setInterval(() => {
        chat.refresh();
    }, 6000)
});
