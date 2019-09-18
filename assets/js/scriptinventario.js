function changeProfile() {
    $('#image').click();
}

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.readAsDataURL(input.files[0]);
        reader.onload = function (e) {
            $('#preview').attr('src', e.target.result);
        };
    }
}

function changeProfile2() {
    $('#matle').click();
}

function readURL2(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.readAsDataURL(input.files[0]);
        reader.onload = function (e) {
            $('#preview2').attr('src', e.target.result);
        };
    }
}
$(document).ready(function () {
    
    $('#matle').change(function () {
        var imgPath = this.value;
        var ext = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
        if (ext == "gif" || ext == "png" || ext == "jpg" || ext == "jpeg")
            readURL2(this);
        else
            alert("Por favor selecione una imagen (jpg, jpeg, png).")
    });   
    
    $('#image').change(function () {
        var imgPath = this.value;
        var ext = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
        if (ext == "gif" || ext == "png" || ext == "jpg" || ext == "jpeg")
            readURL(this);
        else
            alert("Por favor selecione una imagen (jpg, jpeg, png).")
    });

    $("#btnaddproduct").click(function () {
        $("#mdladdprodut").modal("show");
    });
    
});

$(function () {

    $('#formaddproducto').on('submit', function (e) {

        e.preventDefault();

        var formData = new FormData($("#formaddproducto")[0]);
        $.ajax({
            url: $("#formaddproducto").attr("action"),
            type: $("#formaddproducto").attr("method"),
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            complete: function (data) {
              location.reload();
            }
        });

    });
    
    
    $('#formmodiproducto').on('submit', function (e) {
        e.preventDefault();
        var formData = new FormData($("#formmodiproducto")[0]);
        $.ajax({
            url: $("#formmodiproducto").attr("action"),
            type: $("#formmodiproducto").attr("method"),
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            complete: function (data) {
                $("#contentable").hide();
                Swal.fire(
                    'Listo!',
                    'Se actualizo sin problemas',
                    'success'
                );
                $("#formmodiproducto")[0].reset();
                location.reload();
            }
        });
    });
});


function cargardatos() {
    $.ajax({
        url: "inventario/cargadatost",
        type: "POST",
            beforeSend: function () {
                Swal.fire(
                    'Registrando..',
                    'Por espere a que se registre',
                    'info'
                );
            },
        success: function (data) {
            var table = $('#example').DataTable();
            table.destroy();
            $("#contentable").empty();
            $("#contentable").html(data);
            $("#contentable").show();
                            Swal.fire(
                    'Listo!!',
                    'Se registro correctamente',
                    'success'
                );
        }
    });
}

$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
});

