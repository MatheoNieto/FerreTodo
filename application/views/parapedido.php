<!DOCTYPE html>
<html>

<head>

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/img/icon.ico" />
    <title>Para pedido</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-----------------------------------css----------------------->
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/DataTables/Responsive-2.2.2/css/responsive.dataTables.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/fontawesome/css/all.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylegeneral.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/styleppedido.css" rel="stylesheet">
    
    
</head>

<body>
       <div id="loading">
        <p style="text-align: left; margin:5px; font-size:1.7em;">Bienvenido! Por favor espere......</p>
        <br><br><br><br><br><br>
        <center><img id="cargando" src="<?php echo base_url(); ?>assets/img/loading.gif" alt="" width="30%" height="30%"></center>

    </div>
    <div id="barra">
        Para pedido
    </div>

    <div id="mySidenav" class="sidenav">
        <a href="<?php echo base_url(); ?>menuprincipal" id="about" title="Volver al menú principal">Ir al menú <span class="float-right"><i class="fas fa-home"></i></span></a>
        <a href="<?php echo base_url(); ?>inventario" id="cmoni" title="Inventario">Inventario <span class="float-right"><i class="fas fa-boxes"></i></span></a>
        <a href="<?php echo base_url(); ?>ventas" id="blog" title="Productos para hacer el pedido">Ventas <span class="float-right"><i class="fas fa-cash-register"></i></span></a>
        <a href="<?php echo base_url(); ?>reportes" id="projects" title="Reportes">Reportes <span class="float-right"><i class="fas fa-chart-bar"></i></span></a>
    </div>
    <div id="contbtnside" class="col-md-12 col-sm-12 col-12 container">
        <div class="col-md-12 col-sm-12 col-12 row">
            <div class="col-md-1 col-sm-1 col-1"></div>
            <div id="divtable" class="col-md-11 col-sm-11 col-11">
                <table id="example" class="display" style="width:100%">
                    <thead>
                        <tr>
                            <th class="ocultasr">id</th>
                            <th></th>
                            <th>producto</th>
                            <th>Precio compra+iva(Unidad)</th>
                            <th>cantidad</th>
                            <th>medidas</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php 
        foreach($products as $dat){
           echo '<tr>
           <td class="ocultasr id">'.$dat->id.'</td>
           <td><img src="'.base_url().'assets/img/productos/'.$dat->image.'" alt="'.$dat->nameproducnto.'" width="40px"></td>
           <td>'.$dat->nameproducnto.'</td>
           <td>'.$dat->precio_compra.'</td>
           <td>'.$dat->cantidad.'</td>
           <td>'.$dat->tipo_medida.'</td>
            <td>
                <button type="button" class="btn btn-info btn-md boton" data-toggle="tooltip" data-placement="top" title="Modificar el producto" onclick="buscarlo('.$dat->id.')">
                    <img src="'.base_url().'assets/img/goma-de-borrar.png" alt="" height="" width="30px">
                </button>
            </td>
           </tr>';
            
            
        }      
        
        ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>


    <div id="barraf">Ferretodo la 44 | © 2019 Developed By: Mateo Nieto Hoyos</div>

  <!-- The Modal -->
  <div class="modal fade" id="mdlaaddd">
    <div class="modal-dialog modal-sm">
      <div class="modal-content" style="-webkit-box-shadow: 0px 0px 13px 2px rgba(0,0,0,0.75);
-moz-box-shadow: 0px 0px 13px 2px rgba(0,0,0,0.75);
box-shadow: 0px 0px 13px 2px rgba(0,0,0,0.75);">
      
        <!-- Modal Header -->
        <div class="modal-header" style="border:none">
          <h4 class="modal-title">Agregar cantidad</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
             <div  class="col-md-12 col-sm-12 col-12 container" style="padding:0">
                 <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                     <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                    <div class="col-md-8 col-sm-8 col-8">
                        <label for="">Cantidad agregar</label>   
                        <input id="valaddgra" type="number" class="form-control" placeholder="30">
                    </div>
                      
                       
                 </div>
                   <br>
                    
                                          <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                     <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                     <div class="col-md-8 col-sm-8 col-8">
                         <button id="btnagrgarprod" class="btn btn-success form-control">Aplicar</button>
                     </div>
                      
                       
                 </div> 
                 </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer" style="border:none">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">cerrar</button>
        </div>
        
      </div>
    </div>
  </div>
    <!-- The Modal -->
    <div class="modal fade" id="mdlmdl">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Modificar producto</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
<form id="forblabla" action="<?php echo base_url(); ?>productospedi/actu" method="post" enctype="multipart/form-data">
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="col-md-12 col-sm-12 col-12 container" style="padding:0">
                        <div class="col-md-12 col-sm-12 col-12 row">
                            <div class="col-md-4 col-sm-4 col-4">
                               <input type="text" name="txtix" id="txtix" style="display:none">
                                <label for="">Nombre del producto</label>
                                <input type="text" class="form-control" placeholder="Cemento" name="nameproducto" id="nameproducto" required>
                            </div>
                            <div class="col-md-4 col-sm-4 col-4">
                                <label for="">Marca del producto</label>
                                <input type="text" class="form-control" placeholder="Argos" name="marcaproducto" id="marcaproducto" required>
                            </div>
                            <div class="col-md-2 col-sm-2 col-2">
                                <label for="">Cantidad</label>
                                <input type="number" class="form-control" placeholder="75" name="cantproducto" id="cantproducto" required readonly style="cursor:pointer">
                            </div>
                            <div class="col-md-2 col-sm-2 col-2">
                                <label for="">T.Medidas</label>
                                <select name="slctmediad" id="slctmediad" class="form-control" required>
                                    <?php 
                                        foreach($medidas as $tymedi){
                                            echo '<option value="'.$tymedi->id_medida.'">'.$tymedi->tipo_medida.'</option>';
                                        }
                                        ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-12 row">

                            <div class="col-md-4 col-sm-4 col-4">
                                <label for="">Valor unitario (Compra)</label>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">$</span>
                                    </div>
                                    <input type="number" class="form-control" placeholder="65000" name="valoru" id="valoru" required>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-2 col-2">
                                <label for="">IVA</label>
                                <div class="input-group mb-3">
                                    <input type="number" class="form-control" placeholder="30" name="iva" id="iva" required>
                                    <div class="input-group-append">
                                        <span class="input-group-text">%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-4">
                                <label for="">Porcentaje de Ganancia</label>
                                <div class="input-group mb-3">
                                    <input type="number" class="form-control" placeholder="30" name="porganan" id="porganan" required>
                                    <div class="input-group-append">
                                        <span class="input-group-text">%</span>
                                    </div>
                                </div>
                            </div>
                              <div class="col-md-2 col-sm-2 col-2">
                                <label for=""></label>
                                <button type="button" class="btn btn-primary btn-block" onclick="javascript:changeProfile()" data-toggle="tooltip" data-placement="top" title="Subir la imagen del producto">Subir imagen</button>
                                <input type="file" id="image" name="image" style="display: none;" accept="image/*">
                            </div>
                       
                        </div>
                        <div class="col-md-12 col-sm-12 col-12 row">
                            <div class="col-md-4 col-sm-4 col-4"></div>
                            <div class="col-md-4 col-sm-4 col-4">
                                <img id="preview" src="<?php echo base_url(); ?>assets/img/sinimg.png" alt="Opps!" width="100%">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-success">Actualizar</button>
                </div>
                </form>
            </div>
        </div>
    </div>



    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/jquery/dist/jquery.min.js">
    </script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/popper/popper.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/promise-polyfill.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/daterangepicker/moment.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptgenra.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptppedido.js"></script>
    <script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip();
        });

    </script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable({
                "aaSorting": [
                    [2, "asc"]
                ],
                responsive: true,
                'iDisplayLength': 20,
                dom: 'Bfrtip',
                "bLengthChange": false,
                "language": {
                    "lengthMenu": "Display _MENU_ records per page",
                    "zeroRecords": "Lo siento no se encontrarón datos",
                    "info": "Mostrando la pagina _PAGE_ de _PAGES_",
                    "infoEmpty": "No hay datos",
                    "infoFiltered": "(Filtrado de _MAX_ productos registrados)",
                    "search": "Buscar:",
                    "loadingRecords": "Cargando...",
                    "processing": "Procesando...",
                    "paginate": {
                        "first": "Primero",
                        "last": "Ultimo",
                        "next": "Siguiente",
                        "previous": "Anterior"
                    },
                    "aria": {
                        "sortAscending": ": activado el orden de columna ascendiente",
                        "sortDescending": ": activado el orden de columna descendiente"
                    }
                }
            });
        });

    </script>

    <script>
        var inforpoductos = [ 
        <?php
        foreach($products as $productos) {
            echo '{
            "id": "'.$productos->id.'",
            "image": "'.$productos->image.'",
            "nombre": "'.$productos->nameproducnto.'",
            "marca": "'.$productos->marca.'",
            "cantidad": "'.$productos->cantidad.'",
            "medidas": "'.$productos->tipo_medida.'",
            "precio_compra": "'.$productos->precio_compra.'",
            "iva": "'.$productos->iva.'",
            "ganancia": "'.$productos->por_ganancia.'"
        }, ';
        } ?> ];

    </script>
    <script>
 
        
    $(document).ready(function(){
        
           $('#image').change(function () {
        var imgPath = this.value;
        var ext = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
        if (ext == "gif" || ext == "png" || ext == "jpg" || ext == "jpeg")
            readURL(this);
        else
            alert("Por favor selecione una imagen (jpg, jpeg, png).")
    });
        
        $("#cantproducto").click(function(){
            $("#mdlaaddd").modal("show");
        });
        
        $("#btnagrgarprod").click(function(){
            var add = parseInt($("#valaddgra").val());
            
            if(add<0){
                Swal.fire(
  'Opps!',
  'Solo puedes agregar',
  'error'
);
            $("#valaddgra").val(1);
            }else{
            var cantactual = parseInt($("#cantproducto").val());
            var nwewcant = add+cantactual;
            $("#cantproducto").val(nwewcant);
            $("#mdlaaddd").modal("hide");
            $("#valaddgra").val(null);
            }
        });
        
        

    });  
        
        function buscarlo(id){
            
     $.each(inforpoductos, function (i) {
         console.log(i); 
        if (inforpoductos[i].id == id) {
            var poganan = parseInt(inforpoductos[i].ganancia);
            var aumento = parseInt(inforpoductos[i].iva);
            var pirce = parseInt(inforpoductos[i].precio_compra);
            var valsiva = Math.round((pirce*100)/(aumento+100));
            $("#txtix").val(inforpoductos[i].id);
          $("#nameproducto").val(inforpoductos[i].nombre);
          $("#marcaproducto").val(inforpoductos[i].marca);
          $("#cantproducto").val(inforpoductos[i].cantidad);
            
            
            $("#slctmediad option").each(function() {
                var textlo = $(this).text();
                var medisx = inforpoductos[i].medidas;                
                if(textlo == medisx){
                  $(this).attr("selected");  
                }
            }); 
          $("#valoru").val(valsiva);
          $("#iva").val(inforpoductos[i].iva);
          $("#porganan").val(inforpoductos[i].ganancia);
          $("#preview").attr("src","<?php echo base_url(); ?>assets/img/productos/"+inforpoductos[i].image);
            
            $("#mdlmdl").modal("show");
            return false;
            
        }
    });  
            
            
        }
    </script>

</body>

</html>
