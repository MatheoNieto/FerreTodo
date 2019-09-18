<table id="example" class="display" style="width:100%">
    <thead>
        <tr>
            <th>Producto</th>
            <th>Cantidad</th>
            <th>descuento</th>
            <th>Envio</th>
            <th>Precio_venta</th>
            <th>Valortotal</th>
            <th>Fecha de venta</th>
        </tr>
    </thead>
    <tbody>

        <?php 
        foreach($consult as $dat){
           echo '<tr>
           <td>'.$dat->nameproducnto.'</td>
           <td>'.$dat->cantidad.'</td>
           <td>'.$dat->descuento.'</td>
           <td>'.$dat->envio.'</td>
           <td>$'.$dat->precio_venta.'</td>
           <td>$'.$dat->valortotal.'</td>
           <td>'.$dat->fecha_venta.'</td>
           </tr>';
            
            
        }      
        
        ?>
    </tbody>
    <tfoot>
        <tr>
            <th colspan="5" style="text-align:right">Total:</th>
            <th></th>
        </tr>
    </tfoot>
</table>




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
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/buttons.flash.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/JSZip-2.5.0/jszip.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/pdfmake-0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/pdfmake-0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/Buttons-1.5.6/js/buttons.print.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/libs/DataTables/Responsive-2.2.2/js/dataTables.responsive.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptgenra.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/scriptreportes.js"></script>
<script>
    $(document).ready(function() {
        $('#example').DataTable({
            "aaSorting": [
                [6, "desc"]
            ],
            destroy: true,
            responsive: true,
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
            "footerCallback": function(row, data, start, end, display) {
                var api = this.api(),
                    data;

                // Remove the formatting to get integer data for summation
                var intVal = function(i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                        i : 0;
                };

                // Total over all pages
                total = api
                    .column(5)
                    .data()
                    .reduce(function(a, b) {
                        return intVal(a) + intVal(b);
                    }, 0);

                // Total over this page
                pageTotal = api
                    .column(5, {
                        page: 'current'
                    })
                    .data()
                    .reduce(function(a, b) {
                        return intVal(a) + intVal(b);
                    }, 0);

                // Update footer
                $(api.column(5).footer()).html(
                    '$' + pageTotal + ' ( $' + total + ' total)'
                );
            }
        });
    });

</script>
