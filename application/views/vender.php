<!DOCTYPE html>
<html>

<head>

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>assets/img/icon.ico" />
    <title>Vender</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-----------------------------------css----------------------->
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">

    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylegeneral.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/css/stylevende.css" rel="stylesheet">
    <link type="text/css" href="<?php echo base_url(); ?>assets/libs/fontawesome/css/all.min.css" rel="stylesheet">
     <link type="text/css" href="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">
</head>

<body>
    <div id="barra">
        Vender
    </div>

    <div id="mySidenav" class="sidenav">
        <a href="<?php echo base_url(); ?>menuprincipal" id="about" title="Volver al menú principal">Ir al menú <span class="float-right"><i class="fas fa-home"></i></span></a>
        <a href="<?php echo base_url(); ?>inventario" id="cmoni" title="Inventario">Inventario <span class="float-right"><i class="fas fa-boxes"></i></span></a>
        <a href="<?php echo base_url(); ?>productospedi" id="blog" title="Productos para hacer el pedido">Parapedido <span class="float-right"><i class="fas fa-dolly"></i></span></a>
        <a href="<?php echo base_url(); ?>reportes" id="projects" title="Reportes">Reportes <span class="float-right"><i class="fas fa-chart-bar"></i></span></a>
    </div>
    <div id="contentmain" class="col-md-12 col-sm-12 col-12 container" style="padding:0">
        <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
            <div class="col-md-1 col-sm-1 col-1"></div>
            <div class="col-md-11 col-sm-11 col-11" style="padding:0">
                <div class="col-md-12 col-sm-12 col-12 row">
                    <div class="col-md-2 div-sm-2 col-2"></div>
                    <div id="contselest" class="col-md-6 col-sm-6 col-6">
                        <label for="selproduc">Buscar los producto para la venta</label>
                        <select id="selproduc" name="selproduc" class="selectpicker form-control" data-live-search="true"></select>
                    </div>
                    <div class="col-md-4 div-sm-4 col-4">
                        <div class="col-md-6 col-sm-6 col-6">
                            <button id="btnaddpro" class="btn btn-light" data-toggle="tooltip" data-placement="right" title="Agregar el producto a la factura"><img src="<?php echo base_url(); ?>assets/img/carro-de-la-compra.png" alt="" width="100%"></button>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
            <div class="col-md-1 col-sm-1 col-1"></div>
            <div class="col-md-10 col-sm-10 col-10" style="padding:0">
                <div class="col-md-12 col-sm-12 col-12 row">
                    <div id="addedproducto" class="col-md-9 col-sm-9 col-9">
                        <hr>
                        <ul id="listfactura" class="list-unstyled"></ul>
                    </div>
                    <div id="resumentventa" class="col-md-3 col-sm-3 col-3">
                        <h5 class="text-center">Resumen de la venta</h5>
                        <hr>
                        <div class="col-md-12 col-sm-12 col-12">
                            <p>Subtotal(<span id="cntprdot">0</span>) <span id="vlarsubt" class="platasub float-right">$0</span></p>
                        </div>
                        <hr>
                        <div class="col-md-12 col-sm-12 col-12">
                            <a href="#" data-toggle="modal" data-target="#modlaenvio"><p>Envio <span id="elenvio" class="plata float-right">$0</span></p></a>
                        </div>
                        <hr>
                        <div class="col-md-12 col-sm-12 col-12">
                            <a href="#" data-toggle="modal" data-target="#modldescuaneto"><p>Descuento <span  id="eldescuento" class="plata float-right">$-0</span></p></a>
                        </div>
                        <hr>
                        <div class="col-md-12 col-sm-12 col-12">
                            <p>TOTAL <span id="totaltotal" class="platasub float-right">$0</span></p>
                        </div>
                        <hr>
                        <div class="col-md-12 col-sm-12 col-12">
                            <button id="btnvendido" class="btn btn-outline-primary btn-block" >Vender</button>

                        </div>
                    </div>

                </div>


            </div>
            <div class="col-md-1 col-sm-1 col-1"></div>


        </div>
    </div>

    <div id="barraf">Ferretodo la 44 | © 2019 Developed By: Mateo Nieto Hoyos</div>

   
<!--  Modales -->
   
   
  <!-- The Modal -->
  <div class="modal fade" id="modlaenvio">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Precio del envio</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
             <div  class="col-md-12 col-sm-12 col-12 container" style="padding:0">
                 <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                     <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                     <div class="col-md-8 col-sm-8 col-8">
                        <label for="">Valor del envio</label>
                           <div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">$</span>
    </div>
    <input type="number" id="pricesend" class="form-control" placeholder="3000">
  </div>
                     </div>
                      
                       
                 </div>
                    
                                          <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                     <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                     <div class="col-md-8 col-sm-8 col-8">
                         <button id="btnaplienvio" class="btn btn-success form-control">Aplicar</button>
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
     
  <!-- The Modal -->
  <div class="modal fade" id="modldescuaneto">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Descuento por la compra</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
             <div  class="col-md-12 col-sm-12 col-12 container" style="padding:0">
                 <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                     <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                     <div class="col-md-8 col-sm-8 col-8">
                        <label for="">Valor del descuento(%)</label>
                           <div class="input-group mb-3">
   
     <input id="valdescuento" type="number" class="form-control" placeholder="30">
      <div class="input-group-append">
      <span class="input-group-text">%</span>
    </div>
    
  </div>
                     </div>
                      
                       
                 </div>
                    
                                          <div class="col-md-12 col-sm-12 col-12 row" style="padding:0">
                     <div class="col-md-2 col-sm-2 col-2" style="padding:0"></div>
                     <div class="col-md-8 col-sm-8 col-8">
                         <button id="btndescuento" class="btn btn-success form-control">Aplicar</button>
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
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
     <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/sweetalert2.all.min.js"></script>
                <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/promise-polyfill.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptgenra.js"></script>
    <script>
        var inforpoductos = [ 
        <?php
        foreach($productos as $products) {
            echo '{
            "id": "'.$products->id.'",
            "image": "'.$products->image.'",
            "nombre": "'.$products->nameproducnto.'",
            "marca": "'.$products->marca.'",
            "cantidad": "'.$products->cantidad.'",
            "medidas": "'.$products->tipo_medida.'",
            "precio_venta": "'.$products->precio_venta.'",
        }, ';
        } ?> ];
        
        
$.each(inforpoductos, function (i) {
    var contenhtml = '<option value="' + inforpoductos[i].id + '">' + inforpoductos[i].nombre + '</option>  ';
    $("#selproduc").append(contenhtml);
    contenhtml = null;
});

var factura = [];

$(document).ready(function () {
    $("#btnaddpro").click(function () {
        var id;
        $("#selproduc option:selected").each(function () {
            id = $(this).val();
        });
        buscar(id);
    });   

});

function buscar(id) {
    var code = id;
    $.each(inforpoductos, function (i) {

        if (inforpoductos[i].id == code) {

            var datos = {
            "id": inforpoductos[i].id,
            "image":inforpoductos[i].image,
            "nombre": inforpoductos[i].nombre,
            "marca": inforpoductos[i].marca,
            "cantidad": inforpoductos[i].cantidad,
            "cantidadn":1,
            "envio":0,
            "descuento":0,
            "medidas": inforpoductos[i].medidas,
            "precio_venta": inforpoductos[i].precio_venta,
            };
            
            vaidadarya(inforpoductos[i].id,datos);
        }
    });


}

function vaidadarya(id,datos){
    
    var encontro = 0;
    $.each(factura, function (i) {
        if(factura[i].id == id){
            encontro = 1;
            return false;
        }else{
          encontro=0;  
        }
        
    });
    if(encontro>0){
      Swal.fire(
  'Opps!',
  'El producto ya se encuentra en la factura',
  'error'
); 
    }else{
      factura.push(datos);
        crear();
    }
}
function crear() {
    $(".tuultip").tooltip('dispose');
    $("#listfactura").empty();
    var suma =0 ;
    var acntmedia=0;
    
    $.each(factura, function (i) {
        
       var number = factura[i].cantidad;        
        var contenhtml = '<li class="media"><img class="mr-3" src="<?php echo base_url(); ?>assets/img/productos/'+factura[i].image+'" alt="" width="10%"> <div class="media-body"> <h5 class="mt-0 mb-1">'+factura[i].nombre+'</h5><div class="col-md-12 col-sm-12 col-12 row"> <div class="col-md-4 col-sm-4 col-4"><p>Precio $'+factura[i].precio_venta+' por '+factura[i].medidas+'</p></div><div class="col-md-4 col-sm-4 col-4"> <label for="">Cantidad: </label><select id="slectcant'+i+'" class="selectpicker2" data-width="fit"> ';
        for(var j =1;j<=number;j++){
            if(factura[i].cantidadn == j){
                contenhtml+='<option value="'+factura[i].id+'" selected>'+j+'</option>'; 
            }else{
              contenhtml+='<option value="'+factura[i].id+'">'+j+'</option>';     
            }
                    
        }        
        contenhtml += '</select> </div><div class="col-md-2 col-sm-2 col-2"></div><div class="col-md-1 col-sm-1 col-1"> <a href="#" class="tuultip" onclick="quitardlist('+factura[i].id+');"><img src="<?php echo base_url(); ?>assets/img/borrar.png" alt="" width="100%"></a> </div></div></div></li>';
        $("#listfactura").append(contenhtml);
        contenhtml = null;
        $(".selectpicker2").selectpicker('setStyle','fit');
        $(".tuultip").tooltip({title: "Quitar el producto de la lista", trigger: "hover"});
        lol= parseInt(factura[i].precio_venta*factura[i].cantidadn);
        suma= suma + lol;
        lfdf= parseInt(factura[i].cantidadn);
        acntmedia = acntmedia+lfdf;
        
    });
        $("select.selectpicker2").bind('change',function(ev){
            var cantid = $("option:selected",this).text();
            var id = $("option:selected",this).val();
            buscarxcanti(id,cantid);
            
            
            
    });
         
    
        $("#cntprdot").text(acntmedia);
        $("#vlarsubt").text("$"+suma);
        $("#totaltotal").text("$"+suma);
}
        function buscarxcanti(id,ncantidad){
            var fasdf=0;
                $.each(factura, function (i) {

        if (factura[i].id == id) {
            var acntmedia = $("#listfactura .media").length;
            if(acntmedia>1){
            var cunta = $("#totaltotal").text();
            var sinsimbol = cunta.substring(1);
            var comova = parseInt(sinsimbol);
            var precio = parseInt(factura[i].precio_venta);
            var cantidadv =factura[i].cantidadn;
            factura[i].cantidadn = ncantidad; 
            var cantidad = parseInt(factura[i].cantidadn);
            var beforerest = cantidadv*precio;
            var resta = comova - beforerest;
            var nadd = precio*cantidad;
            var ntotal = resta+nadd;
            $("#vlarsubt").text("$"+ntotal);
            $("#totaltotal").text("$"+ntotal);
            }else{
                var precio = parseInt(factura[i].precio_venta); 
                factura[i].cantidadn = ncantidad; 
                var cantidadnu = parseInt(factura[i].cantidadn); 
                var ntotal = precio*cantidadnu;
                $("#vlarsubt").text("$"+ntotal);
                $("#totaltotal").text("$"+ntotal);
            }
            var iuerio = parseInt(factura[i].cantidadn);
            fasdf = fasdf+iuerio;
            $("#cntprdot").text(fasdf);
        }
    });
            
            
        }
        
        function quitardlist(id){
            console.log("entro");
            $.each(factura, function (i) {
            if(factura[i].id == id){
           var datos = {
            "id": factura[i].id,
            "image":factura[i].image,
            "nombre": factura[i].nombre,
            "marca": factura[i].marca,
            "cantidad": factura[i].cantidad,
            "cantidadn":factura[i].cantidadn,
            "envio":factura[i].envio,
            "descuento":factura[i].descuento,
            "medidas": factura[i].medidas,
            "precio_venta": factura[i].precio_venta,
            };
            console.log("encontro");
            factura.splice(i, 1);
            crear();
            return false;
            
            
            }        
            });
            
        }
    </script>   

    <script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip();
        });

    </script>
       
    <script>
        $(document).ready(function() {
               
    $("#btnaplienvio").click(function(){
        $("#modlaenvio").modal("hide");
        //elenvio
        var valorenvio = $("#pricesend").val();
        var valsubtc = $("#vlarsubt").text();
        var valorsubtotal = valsubtc.substring(1); 
        //en enteros
        var intsubt = parseInt(valorsubtotal);
        var intenvio = parseInt(valorenvio);
        var newprice = intsubt+intenvio;
        $("#elenvio").text("$"+valorenvio);
        $("#totaltotal").text("$"+newprice);
        $.each(factura, function (i) {
       
            factura[i].envio = intenvio;

        });
        
        
    });
    
    $("#btndescuento").click(function(){
       var pordesceunto = $("#valdescuento").val(); 
         var valsubtc = $("#totaltotal").text();
        var valorsubtotal = valsubtc.substring(1);
        var inttotalt= parseInt(valorsubtotal);
        var intporcen = parseInt(pordesceunto);
        
        var valordescuent =Math.round(inttotalt*intporcen/100);
        var ntotal = Math.round(inttotalt - valordescuent);
        $("#eldescuento").text("$-"+valordescuent);
        $("#totaltotal").text("$"+ntotal);
        
                $.each(factura, function (i) {
       
            factura[i].descuento = intporcen;

        });
        
        
    });
            
            $("#btnvendido").click(function(){
                
                if(factura == ""){
                        Swal.fire(
  'Opps!',
  'No se encuntran productos agregados',
  'error'
);   
                }else{
                    
              var datos = JSON.stringify(factura); 
                    var parametro = {"prdvendi":datos}
        $.ajax({
            url: "<?php echo base_url(); ?>ventas/lasventas",
            type: "POST",
            data: parametro,
            complete: function(data) {
                Swal.fire(
                'Listo!',
                'Se registro la venta sin problemas',
                'success'
                );
                location.reload();
            }
        }); 
                    
                    
                    
                }
                
            });
        });

    </script>



</body>

</html>
