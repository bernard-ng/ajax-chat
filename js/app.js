/**
 * Simple Chat AJAX,
 * @author Tshabu Ngandu Bernard
 * @copyright http://ngpictures.pe.hu
 * @version 1.0
 * @see https://github/bernard-ng/chat-ajax
 *
 */
document.addEventListener('DOMContentLoaded', function(){


    // on recupere le nom de la personne active.
    let username = document.querySelector("meta[name='session']").getAttribute('content');

    //XMLHttprequest polyfil
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
                    setFlash(msg.browserError);
                }
            }
        }

        if (!xhr) {
            return false;
        }
        return xhr;
    }

    //affiche une message avec le toast de Mdz
    let setFlash = (message) => {
        Materialize.toast(message, 2000);
    }


    /**
     * les messages d'erreur, visible pour les utilisateurs.
     */
    let msg = {
        undefinedError: "Oups something went wrong",
        networkError: "Oups une erreur est survenue, Vérifiez votre connexion internet...",
        browserError: 'Votre navigateur, ne supporte pas notre chat...',
        emptyMsg: "Votre message est vide !!!",
    }


    class Chat {

        /**
         * construit la class Chat.
         * @param {string} container l'élément HTML qui contient et affiche les msgs
         * @param {string} form le formulaire de soumission d'un msg
         */
        constructor(container, form) {
            this.container = document.querySelector(container);
            this.form = document.querySelector(form);

            //si le container ou le form n'existe pas
            if (this.container === null && this.form === null) {
                throw new Error("The message container or the chat form doesn't exists...");
                setFlash(msg.undefinedError);
            }
        }

        init() {
            // capture la soumission, et envoi le message en AJAX
            this.form.addEventListener('submit', (e) => {
                e.preventDefault();
                e.stopPropagation();

                let message = this.form.querySelector('textarea').value;
                if (message.length > 0) {
                    if (getXhr()) {
                        let xhr = getXhr();

                        //creation des données, pour ne pas ajouter des en-têtes
                        let data = new FormData();
                        data.append('name', username);
                        data.append('message', message);

                        //lancement de la request en POST de manière Async
                        xhr.open('POST', 'chat.php', true);
                        xhr.setRequestHeader('X-Requested-With', 'xmlhttprequest');
                        xhr.onreadystatechange = () => {
                            if (xhr.readyState === 4) {
                                if (xhr.status === 200) {
                                    this.inject(xhr.responseText);
                                    this.refresh();
                                    return true;
                                } else {
                                    setFlash(msg.networkError);
                                    return false;
                                }
                            }
                        }
                        xhr.send(data);
                    } else {
                        setFlash(msg.browserError);
                        return false;
                    }
                } else {
                    setFlash(msg.emptyMsg);
                    return false;
                }
            })
        }


        /**
         * injection des messages dans le container
         * @param {string|object} data
         */
        inject(data) {

            //si les données sont une string, on convertie en JSON
            if(typeof data !== 'object') {
                data = JSON.parse(data);
            }

            /**
             * rénitialisation de la valeur du formulaire
             * injection du message dans le container, en première position.
             */
            this.form.querySelector('textarea').value = '';
            this.container.insertBefore(this.createMsg(data), this.container.firstChild);
        }


        /**
         * crée un message apartir des données recues
         * @param {object} data
         */
        createMsg(data) {
            let messageWrapper = document.createElement('div');

            messageWrapper.classList.add('message-wrapper', 'them', 'animated', 'bounceInLeft');
            messageWrapper.setAttribute('id', data.id);
            let text =
                `<div class="card text-wrapper">
                    <strong>${data.name}</strong><br>
                    <p>${data.message}</p></div>
                </div>`;

            if (data.name == username) {
                messageWrapper.classList.remove('them', 'bounceInLeft');
                messageWrapper.classList.add('message-wrapper', 'me', 'animated', 'bounceInRight');
                text =
                    `<div class="card white text-wrapper">
                    <strong>${data.name}</strong><br>
                    <p>${data.message}</p></div>
                </div>`;
            }

            messageWrapper.innerHTML = text;
            return messageWrapper;
        }


        /**
         * charge plusieur message et les injecte dans le container
         * @param {string} data
         */
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


        /**
         * recupère les derniers msgs en fonction du dernier afficher dans le container.
         * @param {interger} lastId
         */
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
                                setFlash(msg.networkError);
                                return false;
                            }
                        }
                    }
                    xhr.timeout = 15000;
                    xhr.send();
                } else {
                    setFlash(msg.browserError);
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
