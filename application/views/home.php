<!DOCTYPE html>
<html>
<head>

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/img/icon.ico" />
    <title>Menú principal</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-----------------------------------css----------------------->
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylegeneral.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/styleprincipal.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/fontawesome/css/all.min.css" rel="stylesheet">

</head>

<body>
    <div id="barra">
        Menú principal
    </div>

    <nav class="navbar navbar-fixed-left navbar-minimal animate" role="navigation">
        <div class="navbar-toggler animate">
            <span class="menu-icon"></span>
        </div>
        <ul class="navbar-menu animate">
            <li>
                <a href="#" class="animate">
                    <span class="desc animate">Ferretodola44</span>
                    <i class="fas fa-user"></i>
                </a>
            </li>
           <li>
                <a href="#" class="animate" data-toggle="modal" data-target="#mdlayuda">
                    <span class="desc animate">Ayuda</span>
                    <i class="far fa-question-circle"></i>
                </a>
            </li>

            <li>
                <a href="<?php echo base_url(); ?>login/cerrarsession" class="animate">
                    <span class="desc animate">Cerrar Sesion </span>
                    <i class="fas fa-sign-out-alt"></i>
                </a>
            </li>
        </ul>
    </nav>


    <div id="container" class="container">
        <div class="item">
            <a href="<?php echo base_url(); ?>ventas" class="item__link" data-toggle="tooltip" data-placement="top" title="Vender">
                <div class="item__thumbs">
                    <div class="item__thumb-container">
                        <img src="<?php echo base_url(); ?>assets/img/caja-registradora.png" alt="Videos Showreel" class="item__thumb js-thumb">
                    </div>

                    <div class="item__reflection-wrapper">
                        <div class="item__reflection-container">
                            <img src="<?php echo base_url(); ?>assets/img/caja-registradora.png" alt="Videos Showreel" class="item__thumb item__reflection js-reflection">
                        </div>
                    </div>
                </div>

            </a>
        </div>
        <div class="item" id="itmmonittori">
            <a class="item__link" href="<?php echo base_url(); ?>inventario" data-toggle="tooltip" data-placement="top" title="Inventario">
                <div class="item__thumbs">
                    <div class="item__thumb-container">
                        <img src="<?php echo base_url(); ?>assets/img/inventario.png" alt="Iniciar sesion" class="item__thumb js-thumb">
                    </div>

                    <div class="item__reflection-wrapper">
                        <div class="item__reflection-container">
                            <img src="<?php echo base_url(); ?>assets/img/inventario.png" class="item__thumb item__reflection js-reflection">
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="item">
            <a class="item__link" href="<?php echo base_url(); ?>reportes" data-toggle="tooltip" data-placement="top" title="Reportes">
                <div class="item__thumbs">
                    <div class="item__thumb-container">
                        <img src="<?php echo base_url(); ?>assets/img/carpeta.png" alt="Sleep Benefits" class="item__thumb js-thumb">
                    </div>

                    <div class="item__reflection-wrapper">
                        <div class="item__reflection-container">
                            <img src="<?php echo base_url(); ?>assets/img/carpeta.png" alt="Sleep Benefits" class="item__thumb item__reflection js-reflection">
                        </div>
                    </div>
                </div>

            </a>
        </div>

        <div class="item">
            <a class="item__link" href="<?php echo base_url(); ?>productospedi" data-toggle="tooltip" data-placement="top" title="Productos para hacer pedido">
                <div class="item__thumbs">
                    <div class="item__thumb-container">
                        <img src="<?php echo base_url(); ?>assets/img/documento.png" alt="Videos Showreel" class="item__thumb js-thumb">
                    </div>

                    <div class="item__reflection-wrapper">
                        <div class="item__reflection-container">
                            <img src="<?php echo base_url(); ?>assets/img/documento.png" alt="Videos Showreel" class="item__thumb item__reflection js-reflection">
                        </div>
                    </div>
                </div>

            </a>
        </div>

    </div>
    <div id="barraf">Ferretodo la 44 | © 2019 Developed By: Mateo Nieto Hoyos</div>
    <div id="loading">
        <p style="text-align: left; margin:5px; font-size:1.7em;">Bienvenido! Por favor espere......</p>
        <br><br><br><br><br><br>
        <center><img id="cargando" src="<?php echo base_url(); ?>assets/img/loading.gif" alt="" width="30%" height="30%"></center>

    </div>
    
  <!-- The Modal -->
  <div class="modal fade" id="mdlayuda">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Ayuda</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>        
        <!-- Modal body -->
        <div class="modal-body">
          <div class="col-md-12 col-sm-12 col-12 container">
                <div class="col-md-12 col-sm-12 col-12 row">
                <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                <video controls width="100%" height="" src="<?php echo base_url(); ?>assets/img/agregarproducto.mp4" type="video/mp4"></video>

                <div class="caption">
                <h3>Como agregar un producto en el inventario?</h3>
                <p>En el siguiente video verás como se registra un producto en el sistema</p>
                </div>
                </div>
                </div> 
                <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                <video controls width="100%" height="" src="<?php echo base_url(); ?>assets/img/vender.mp4" type="video/mp4"></video>

                <div class="caption">
                <h3>Como registrar un venta?</h3>
                <p>En el siguiente video verás como se registra un venta en el sistema</p>
                </div>
                </div>
                </div> 
                
               <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                <video controls width="100%" height="" src="<?php echo base_url(); ?>assets/img/reportes.mp4" type="video/mp4"></video>

                <div class="caption">
                <h3>Como ver las ventas?</h3>
                <p>En el siguiente video verás como se puede consultar las ventas que se llevan con el rango de fecha en el sistema</p>
                </div>
                </div>
                </div>
                </div> 
                </div> 
                      
<!--segunda line tutoriales-->
            <div class=" col-md-12 col-sm-12 col-12 container">
            <div class=" col-md-12 col-sm-12 col-12 row">
                <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                <video controls width="100%" height="" src="<?php echo base_url(); ?>assets/img/pedidos.mp4" type="video/mp4"></video>

                <div class="caption">
                <h3>Ver los productos para el proximo pedido?</h3>
                <p>En el siguiente video verás los productos que tienen dos o menos ejemplares, También podrás ver como se agrega mas ejemplares del mismo producto (Agregar mas cantidad del producto). en este modulo se prodra modificar el precio de compra, el porcentaje de ganancia,el iva, el nombre , la marca y agregar mas cantidad</p>
                </div>
                </div>
                </div> 
                <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                <video controls width="100%" height="" src="<?php echo base_url(); ?>assets/img/modificar.mp4" type="video/mp4"></video>

                <div class="caption">
                <h3>Modificar la información de un producto</h3>
                <p>En el siguiente video verás los productos se prodra modificar el precio de compra, el porcentaje de ganancia,el iva, el nombre , la marca y agregar mas cantidad.</p>
                </div>
                </div>
                </div>
                
                  <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                <video controls width="100%" height="" src="<?php echo base_url(); ?>assets/img/copiadseguridaddb.mp4" type="video/mp4"></video>

                <div class="caption">
                <h3>Hacer copia de seguridad de la información</h3>
                <p>En el siguiente video verás como se hace la copia de seguridad de la información (backup) esto se hace por si alguna falla no haya perdidas de la información se recomienda hacerlo diario cuando se haga el cierre de establecimiento. <a href="http://localhost/phpmyadmin" target="_blank">Da clic para ir al sitio para la copia de seguridad</a>.</p>
                </div>
                </div>
                </div> 
                </div>
          
          </div>
        </div>        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>
        
      </div>
    </div>
  </div>


    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/jquery/dist/jquery.min.js">
    </script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/popper/popper.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptgenra.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptprincipal.js"></script>
    <script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip({
                placement: 'top',
                trigger: 'manual'
            }).tooltip('show');
            // $('[data-toggle="tooltip"]').tooltip();   
        });

    </script>
</body>

</html>
