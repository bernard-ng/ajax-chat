<?php include('src/chat.php') ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Journée Culturelle Chat</title>
        <meta name="description" content="Application qui permet de chater avec ceux qui sont à la journée culturelle imani 2018">
        <meta name="session" content="<?= $_SESSION['name']?>">
        <link rel="stylesheet" href="assets/css/materialize.css">
        <link rel="stylesheet" href="assets/css/design.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/chats/style.css">
    </head>
    <body>
        <div class="navbar-fixed teal darken-3">
            <nav class="teal darken-3">
            <div class="nav-wrapper container teal darken-3">
                <a href="" class="brand-logo">JC Chats</a>
                <a href="#end"  class="button-collapse right">
                    <i class="icon icon icon-chevron-down"></i>
                </a>
                <a href="src/logout.php" data-activates="mobile-menu" class="button-collapse left">
                    <i class="icon icon icon-off"></i>
                </a>

                <ul class="right hide-on-med-and-down links">
                    <li class="waves-effect"><a href="src/logout.php"><i class="icon icon-off"></i> Déconnextion</a></li>
                    <li class="waves-effect"><a href="#end"><i class="icon icon icon-chevron-down"></i> Derniers comments</a></li>
                </ul>
            </div>
        </nav>
        </div>

        <div class="wrapper">
            <div id="inner" class="inner">
                <div id="content" class="content container">
                    <?php foreach($chats as $chat): ?>
                        <?php if($_SESSION['name'] === $chat->name): ?>
                            <div class="message-wrapper me animated bounceInRight" id="<?= $chat->id ?>">
                                <div class="card white text-wrapper">
                                    <strong><?= $chat->name ?></strong><br>
                                    <p><?= $chat->message ?></p>
                                </div>
                            </div>
                        <?php else: ?>
                            <div class="message-wrapper them animated bounceInLeft" id="<?= $chat->id ?>">
                                <div class="card cyan darken-2 text-wrapper">
                                    <strong><?= $chat->name ?></strong><br>
                                    <p><?= $chat->message ?></p>
                                </div>
                            </div>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </div>
            </div>

            <form action="" method="post" id="bottom" class="bottom">
                <textarea id="input" class="input" name="message" placeholder="commentaires..."></textarea>
                <button type="submit" id="send" class="btn btn-floating teal darken-3 btn-large send"><i class="icon icon-send"></i></button>
            </form>
        </div>

        <div id="end"></div>

    <script src="js/jquery.min.js"></script>
    <script src="js/materialize.js"></script>
    <script src="js/app.js"></script>
    <?php if (isset($_SESSION['msg']) && !empty($_SESSION['msg'])) : ?>
        <script type="text/javascript">
            var message = "<?php echo $_SESSION['msg']; ?>";
            <?php unset($_SESSION['msg']); ?>
            Materialize.toast(message, 5000);
        </script>
    <?php endif ?>
    </body>
</html>
