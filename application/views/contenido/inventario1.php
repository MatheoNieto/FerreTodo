                <table id="example" class="display" style="width:100%">
                    <thead>
                        <tr>
                            <th>FechaIngreso</th>
                            <th class="ocultar">codigo</th>
                            <th></th>
                            <th>Nombre</th>
                            <th>Marca</th>
                            <th>Cantidad (medida)</th>
                            <th>Precio compra x Unidad</th>
                            <th>Precio venta x Unidad</th>
                            <th>Ganancia x Unidad</th>
                            <th>Compra total</th>
                            <th>Venta total</th>
                            <th>Ganancia Total</th>
                            <th>%ganancia</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="contbody">
                        <?php 
                        foreach($productos as $products){
                            echo '<tr>
                            <td>'.$products->fechaingresado.'</td>
                            <td class="ident ocultar">'.$products->id.'</td>
                            <td><img src="'.base_url().'assets/img/productos/'.$products->image.'" alt="'.$products->nameproducnto.'" width="40px"></td>
                            <td>'.$products->nameproducnto.'</td>
                            <td>'.$products->marca.'</td>
                            <td>'.$products->cantidad.' ('.$products->tipo_medida.')</td>
                            <td>$'.$products->precio_compra.'</td>
                            <td>$'.$products->precio_venta.'</td>
                            <td>$'.$products->ganancia.'</td>
                            <td>$'.$products->compra_total.'</td>
                            <td>$'.$products->venta_total.'</td>
                            <td>$'.$products->ganancia_total.'</td>
                            <td>'.$products->por_ganancia.'%</td>
                            <td>
                                <button type="button" class="btn btn-info btn-md" data-toggle="tooltip" data-placement="top" title="Modificar el producto" onclick="buscarlo('.$products->id.');">
                                <img src="'.base_url().'assets/img/goma-de-borrar.png" alt="" height="" width="30px">
                                </button>
                            </td>
                        </tr>';
                        }
                        ?>

                    </tbody>
                    <tfoot>
                        <tr>
                            <th colspan="9" style="text-align:right">Total:</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </tfoot>
                </table>

                <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/jquery/dist/jquery.min.js">
                </script>
                <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/popper/popper.min.js"></script>
                <script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/bootstrap/js/bootstrap.min.js">
                </script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/sweetalert2.all.min.js"></script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/sweetalert2/dist/promise-polyfill.js"></script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js">
                </script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/dataTables.buttons.min.js">
                </script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/buttons.flash.min.js">
                </script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/JSZip-2.5.0/jszip.min.js"></script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/pdfmake-0.1.36/pdfmake.min.js"></script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/pdfmake-0.1.36/vfs_fonts.js"></script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/buttons.html5.min.js">
                </script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/buttons.print.min.js">
                </script>
                <script type="text/javascript"
                    src="<?php echo base_url(); ?>assets/libs/DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js">
                </script>
                <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptgenra.js"></script>
                <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptinventario.js"></script>
                <script>
                    $(document).ready(function () {
                        $('#example').DataTable({
                            destroy: true,
                            "columnDefs": [{
                                "targets": [0],
                                "visible": false
                            }],
                            "aaSorting": [
                                [0, "desc"]
                            ],
                            'iDisplayLength': 20,
                            dom: 'Bfrtip',
                            buttons: [
                                'excel', 'pdf', 'print'
                            ],
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
                                },
                                "buttons": {
                                    "excel": 'Exportar a excel',
                                    "pdf": 'Exportar a pdf',
                                    "print": 'Imprimir'

                                }
                            },

                            "footerCallback": function (row, data, start, end, display) {
                                var api = this.api(),
                                    data;

                                // Remove the formatting to get integer data for summation
                                var intVal = function (i) {
                                    return typeof i === 'string' ?
                                        i.replace(/[\$,]/g, '') * 1 :
                                        typeof i === 'number' ?
                                        i : 0;
                                };

                                // Total over all pages
                                total = api
                                    .column(9)
                                    .data()
                                    .reduce(function (a, b) {
                                        return intVal(a) + intVal(b);
                                    }, 0);

                                // Total over this page
                                pageTotal = api
                                    .column(9, {
                                        page: 'current'
                                    })
                                    .data()
                                    .reduce(function (a, b) {
                                        return intVal(a) + intVal(b);
                                    }, 0);

                                // Update footer
                                $(api.column(9).footer()).html(
                                    '$' + pageTotal + ' ( $' + total + ' total)'
                                );

                                // Total over all pages
                                total2 = api
                                    .column(10)
                                    .data()
                                    .reduce(function (a, b) {
                                        return intVal(a) + intVal(b);
                                    }, 0);

                                // Total over this page
                                pageTotal2 = api
                                    .column(10, {
                                        page: 'current'
                                    })
                                    .data()
                                    .reduce(function (a, b) {
                                        return intVal(a) + intVal(b);
                                    }, 0);

                                // Update footer
                                $(api.column(10).footer()).html(
                                    '$' + pageTotal2 + ' ( $' + total2 + ' total)'
                                );

                                // Total over all pages
                                total3 = api
                                    .column(11)
                                    .data()
                                    .reduce(function (a, b) {
                                        return intVal(a) + intVal(b);
                                    }, 0);

                                // Total over this page
                                pageTotal3 = api
                                    .column(11, {
                                        page: 'current'
                                    })
                                    .data()
                                    .reduce(function (a, b) {
                                        return intVal(a) + intVal(b);
                                    }, 0);

                                // Update footer
                                $(api.column(11).footer()).html(
                                    '$' + pageTotal3 + ' ( $' + total3 + ' total)'
                                );
                            }
                        });
                    });
                </script>

                <script>
                    var inforpoductos = [ 
                        <?php
                    foreach($productos as $productss) {
                        echo '{
                        "id": "'.$productss->id.'",
                        "image": "'.$productss->image.'",
                        "nombre": "'.$productss->nameproducnto.'",
                        "marca": "'.$productss->marca.'",
                        "cantidad": "'.$productss->cantidad.'",
                        "medidas": "'.$productss->tipo_medida.'",
                        "precio_compra": "'.$productss->precio_compra.'",
                        "iva": "'.$productss->iva.'",
                        "ganancia": "'.$productss->por_ganancia.'"
                    }, ';
                    } ?> ];
                </script>
                <script>
                    $(document).ready(function () {

                        $("#cantproducto2").click(function () {
                            $("#mdlaaddd").modal("show");
                        });

                        $("#btnagrgarprod").click(function () {
                            var add = parseInt($("#valaddgra2").val());
                                var cantactual = parseInt($("#cantproducto2").val());
                                var nwewcant = add + cantactual;
                                $("#cantproducto2").val(nwewcant);
                                $("#mdlaaddd").modal("hide");
                                $("#valaddgra2").val(null);
                        });
                    });

                    function buscarlo(id) {

                        $.each(inforpoductos, function (i) {
                            if (inforpoductos[i].id == id) {
                                var poganan = parseInt(inforpoductos[i].ganancia);
                                var aumento = parseInt(inforpoductos[i].iva);
                                var pirce = parseInt(inforpoductos[i].precio_compra);
                                var valsiva = Math.round((pirce * 100) / (aumento + 100));
                                $("#txtix2").val(inforpoductos[i].id);
                                $("#nameproducto2").val(inforpoductos[i].nombre);
                                $("#marcaproducto2").val(inforpoductos[i].marca);
                                $("#cantproducto2").val(inforpoductos[i].cantidad);


                                $("#slctmediad2 option").each(function () {
                                    var textlo = $(this).text();
                                    var medisx = inforpoductos[i].medidas;
                                    if (textlo == medisx) {
                                        $(this).attr("selected");
                                    }
                                });
                                $("#valoru2").val(valsiva);
                                $("#iva2").val(inforpoductos[i].iva);
                                $("#porganan2").val(inforpoductos[i].ganancia);
                                $("#preview2").attr("src", "<?php echo base_url(); ?>assets/img/productos/" +
                                    inforpoductos[i].image);

                                $("#mdlmdl").modal("show");
                                return false;

                            }
                        });


                    }
                </script>