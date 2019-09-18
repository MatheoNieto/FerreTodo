<?php
defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html>

<head>

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/img/icon.ico" />
    <title>Bienvenido a Ferretodo la 44</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylelogin.css" rel="stylesheet">
</head>

<body>
    <div id="fondo">
        <img src="<?php echo base_url(); ?>assets/img/fondo.jpg" alt="No se encontro la imagen de fondo" width="100%" height="100%">
    </div>

    <div id="contenedor">
        <div class="container">

            <div class="row" id="pwd-container">
                <div class="col-md-3"></div>
                <div class="col-md-6" id="contenlogin">
                    <section class="login-form">
                        <form role="login" action="" method="POST" autocomplete="off">
                            <center>
                                <h1 id="h1">Ferretodo la 44</h1>
                                <small id="small">Login</small>
                            </center>
                            <br>
                            <input type="text" name="codigo" id="codigo" placeholder="Ingrese el usuario" class="form-control input-lg" required>
                            <input type="password" class="form-control input-lg" id="password" placeholder="Ingrese su contraseña" name="password" required>
                            <button type="submit" class="btn btn-lg btn-success btn-block" id="btn">Ingresar</button>
                        </form>
                    </section>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptgenra.js"></script>
</body>

</html>
