<!DOCTYPE html>
<html>

<head>

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/img/icon.ico" />
    <title>Inventario</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-----------------------------------css----------------------->
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/css/buttons.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/Responsive-2.2.2/css/responsive.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylegeneral.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/styleinventario.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/fontawesome/css/all.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
</head>

<body>
    <div id="loading">
        <p style="text-align: left; margin:5px; font-size:1.7em;">Bienvenido! Por favor espere......</p>
        <br><br><br><br><br><br>
        <center><img id="cargando" src="<?php echo base_url(); ?>assets/img/loading.gif" alt="" width="30%" height="30%"></center>

    </div>
    <div id="barra">
        Inventario
    </div>

    <div id="mySidenav" class="sidenav">
        <a href="<?php echo base_url(); ?>menuprincipal" id="about" title="Volver al menú principal">Ir al menú <span class="float-right"><i class="fas fa-home"></i></span></a>
        <a href="<?php echo base_url(); ?>ventas" id="cmoni" title="Vender">Vender <span class="float-right"><i class="fas fa-cash-register"></i></span></a>
        <a href="<?php echo base_url(); ?>productospedi" id="blog" title="Productos para hacer el pedido">Parapedido <span class="float-right"><i class="fas fa-dolly"></i></span></a>
        <a href="<?php echo base_url(); ?>reportes" id="projects" title="Reportes">Reportes <span class="float-right"><i class="fas fa-chart-bar"></i></span></a>
    </div>

    <div id="contentmain" class="col-md-12 col-sm-12 col-12 container" style="padding:0">
        <div class="col-md-12 col-sm-12 col-12 row">
            <div class="col-md-11 col-sm-11 col-11"></div>
            <div class="col-md-1 col-sm-1 col-1">
                <button id="btnaddproduct" class="btn btn-light" data-toggle="tooltip" data-placement="top" title="Agregar un nuevo producto al inventario">
                    <img src="<?php echo base_url(); ?>assets/img/pallet.png" alt="" height="" width="60px">
                </button>
            </div>
        </div>
        <div class="col-md-12 col-sm-12 col-12 row">
            <div class="col-md-1 col-sm-1 col-1"></div>
            <div id="contentable" class="col-md-11 col-sm-11 col-11">
