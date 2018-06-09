<?php include('src/connexion.php') ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Journée Culturelle Chat</title>
        <meta name="description" content="Application qui permet de chater avec ceux qui sont à la journée culturelle imani 2018">
        <link rel="stylesheet" href="assets/css/materialize.css">
        <link rel="stylesheet" href="assets/css/design.css">
        <link rel="stylesheet" href="assets/icons.css">
        <link rel="stylesheet" href="animate.css">
    </head>
    <body>
    <div class="leading-bg">
        <div class="container">
            <div class="row l12">
                <div class="row col l6 m12 s12 offset-l3 animated fast slideInUp">
                    <div class="hero-titles-no-animated col l12 s12" id="loginBox" >
                        <div class="section-title hero-title-main-2">Chat Journée Culturelle</div>
                        <form method="POST" action="">
                            <div class="input-field col s12">
                                <span class="helper-text red-text darken-4">
                                </span>
                                <input type="text" id="name" name="name" placeholder="Votre nom..."
                                value="<?= isset($_POST['name']) ? htmlspecialchars($_POST['name']): ''?>" >
                            </div>
                            <div class="input-field s12">
                                <div class="col s12" id="connectOptions">
                                    <button type="submit" class="btn blue darken-2 z-depth-2 waves-effect" id="connect">Connexion</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <footer class="leading-footer">
                Developped by <strong><a href="http://ngpictures.pe.hu" target="_blank">Bernard Ng &copy;</a><strong>
            </footer>
        </div>
    </div>
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
