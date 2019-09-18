<!DOCTYPE html>
<html>

<head>

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/img/icon.ico" />
    <title>Reportes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-----------------------------------css----------------------->
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/css/buttons.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/Responsive-2.2.2/css/responsive.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylegeneral.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylereportes.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/fontawesome/css/all.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/daterangepicker/daterangepicker.css" rel="stylesheet">

</head>

<body>
    <div id="barra">
        Reportes
    </div>

    <div id="mySidenav" class="sidenav">
        <a href="<?php echo base_url(); ?>menuprincipal" id="about" title="Volver al menú principal">Ir al menú <span class="float-right"><i class="fas fa-home"></i></span></a>
        <a href="<?php echo base_url(); ?>inventario" id="cmoni" title="Inventario">Inventario <span class="float-right"><i class="fas fa-boxes"></i></span></a>
        <a href="<?php echo base_url(); ?>productospedi" id="blog" title="Productos para hacer el pedido">Parapedido <span class="float-right"><i class="fas fa-dolly"></i></span></a>
        <a href="<?php echo base_url(); ?>ventas" id="projects" title="Reportes">Ventas <span class="float-right"><i class="fas fa-cash-register"></i></span></a>
    </div>


    <div id="mySidenav2" class="sidenav2">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <div class="col-md-12 col-sm-12 col-12 container">
            <form id="formcontlsar" action="<?php echo base_url();?>reportes/consultarfe" method="post">
                <br>
                <div class="col-md-12 col-sm-12 col-12 row">
                    <div class="col-md-1 col-sm-1 col-1"></div>
                    <div class="col-md-11 col-sm-11 col-11">
                        <label for="">Selecione el rango de la fecha</label>
                        <input type="text" id="demo" name="demo" class="form-control" readonly style="cursor:pointer" required>
                    </div>

                </div>
                <br><br>
                <div class="col-md-12 col-sm-12 col-12 row">
                    <div class="col-md-1 col-sm-1 col-1"></div>
                    <div class="col-md-11 col-sm-11 col-11">
                        <button type="submit" class="btn btn-success form-control">Consultar</button>
                    </div>

                </div>
            </form>
        </div>



    </div>

    <div id="contbtnside" class="col-md-12 col-sm-12 col-12 container">
        <div class="col-md-12 col-sm-12 col-12 row">
            <div class="col-md-1 col-sm-1 col-1"></div>
            <div class="col-md-8 col-sm-8 col-8">
                <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Hacer una consulta</span>
            </div>

        </div>

        <div class="col-md-12 col-sm-12 col-12 row">
            <div class="col-md-1 col-sm-1 col-1"></div>
            <div id="divtable" class="col-md-11 col-sm-11 col-11">
