history.pushState(null, null, location.href);
window.onpopstate = function () {
    history.go(1);
};
document.oncontextmenu = function () {
    return false
}

function right(e) {

    if (navigator.appName == 'Netscape' && e.which == 3) {
        return false;
    } else if (navigator.appName == 'Microsoft Internet Explorer' && event.button == 2) {

        return false;
    }
    return true;
}
document.onmousedown = right;


function knowhaveconexion() {
    var onfline = navigator.onLine ? 'online' : 'offline';
    if (onfline == "offline") {
        alert("La pc se encuentra sin internet. Por Favor conectarse a internet");
    }
}

$(document).ready(function () {

    var intervaloconce = setInterval(knowhaveconexion, 1000);

});

window.onload = function () {
    $('#loading').hide();
};
