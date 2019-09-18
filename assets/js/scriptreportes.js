function openNav() {
    document.getElementById("mySidenav2").style.width = "350px";
}

function closeNav() {
    document.getElementById("mySidenav2").style.width = "0";
}
var dt = new Date();
var month = dt.getMonth() + 1;
var month2 = dt.getMonth();
var day = dt.getDate();
var day2 = dt.getDate() - 1;
var day3 = dt.getDate() - 7;
var day4 = dt.getDate() - 30;
var day5 = dt.getDate() + 1;
var year = dt.getFullYear();




$('#demo').daterangepicker({
    "showDropdowns": true,
    "showWeekNumbers": true,
    "showISOWeekNumbers": true,
    "ranges": {
        "Hoy": [
                "" + year + "-" + month + "-" + day,
                "" + year + "-" + month + "-" + day
            ],
        "ayer": [
                "" + year + "-" + month + "-" + day2,
                "" + year + "-" + month + "-" + day

            ],
        "Ultimos 7 dias": [
                "" + year + "-" + month + "-" + day3,
                "" + year + "-" + month + "-" + day

            ],
        "Este Mes": [
                "" + year + "-" + month + "-" + 1,
                "" + year + "-" + month + "-" + 30
            ]
    },
    "locale": {
        "format": "YYYY-MM-DD",
        "separator": " - ",
        "applyLabel": "Aceptar",
        "cancelLabel": "Cancelar",
        "fromLabel": "Desde",
        "toLabel": "Hasta",
        "customRangeLabel": "Elegir rango",
        "weekLabel": "S",
        "daysOfWeek": [
                "Do",
                "Lu",
                "Ma",
                "Mie",
                "Jue",
                "Vie",
                "Sa"
            ],
        "monthNames": [
                "Enero",
                "Febrero",
                "Marzo",
                "Abril",
                "Mayo",
                "Junio",
                "Julio",
                "Agosto",
                "Septiembre",
                "Octubre",
                "Noviembre",
                "Diciembre"
            ],
        "firstDay": 1
    },
    "alwaysShowCalendars": true,
    "startDate": "" + year + "-" + month + "-" + day,
    "endDate": "" + year + "-" + month + "-" + day,
    "opens": "right"
}, function (start, end, label) {
    console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
});


$(function () {

    $('#formcontlsar').on('submit', function (e) {
        e.preventDefault();
        $.ajax({
            url: $("#formcontlsar").attr("action"),
            type: $("#formcontlsar").attr("method"),
            data: $("#formcontlsar").serialize(),
            beforeSend: function () {
                Swal.fire(
                    'Procesando..',
                    'Se estan buscando las ventas en rango de fecha seleccionada por favor espere',
                    'info'
                );
            },
            success: function (data) {
                var table = $('#example').DataTable();
                table.destroy();
                $("#divtable").empty();
                $("#divtable").html(data);
                $("#divtable").show();
                Swal.fire(
                    'Listo!',
                    'Ya puedes visualizar la información',
                    'success'
                );
                closeNav();
            }
        });

    });
});
