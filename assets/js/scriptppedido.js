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
$(document).ready(function () {
    
    $(window).load(function(){
        $("#loading").hide("fade");
    });
    
    $('#image').change(function () {
        var imgPath = this.value;
        var ext = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
        if (ext == "gif" || ext == "png" || ext == "jpg" || ext == "jpeg")
            readURL(this);
        else
            alert("Por favor selecione una imagen (jpg, jpeg, png).")
    });
});


$(function () {

    $('#forblabla').on('submit', function (e) {
        e.preventDefault();
        var formData = new FormData($("#forblabla")[0]);
        $.ajax({
            url: $("#forblabla").attr("action"),
            type: $("#forblabla").attr("method"),
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data) {
                Swal.fire(
                    'Listo!',
                    'Se actualizo sin problemas',
                    'success'
                );
                $("#forblabla")[0].reset();
                location.reload();
            },
            error:function(data){
                alert(data);
            }
        });

    });
});