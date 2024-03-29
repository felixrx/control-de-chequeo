/*
    Tomar una fotografÃ­a y guardarla en un archivo
    @date 2017-11-22
    @author parzibyte
    @web parzibyte.me/blog
*/
function tieneSoporteUserMedia() {
    return !!(navigator.getUserMedia || (navigator.mozGetUserMedia || navigator.mediaDevices.getUserMedia) || navigator.webkitGetUserMedia || navigator.msGetUserMedia)
}

function _getUserMedia() {
    return (navigator.getUserMedia || (navigator.mozGetUserMedia || navigator.mediaDevices.getUserMedia) || navigator.webkitGetUserMedia || navigator.msGetUserMedia).apply(navigator, arguments);
}

// Declaramos elementos del DOM
var $video = document.getElementById("video"),
    $canvas = document.getElementById("canvas"),
    $boton = document.getElementById("add"),
     $estado = document.getElementById("estado");
    
if (tieneSoporteUserMedia()) {
    _getUserMedia({
            video: true
        },
        function(stream) {
            console.log("Permiso concedido");
            $video.srcObject = stream;
            $video.play();

            //Escuchar el click
            $boton.addEventListener("click", function() {

                //Pausar reproducciÃ³n
                $video.pause();

                //Obtener contexto del canvas y dibujar sobre Ã©l
                var contexto = $canvas.getContext("2d");
                $canvas.width = $video.videoWidth;
                $canvas.height = $video.videoHeight;
                contexto.drawImage($video, 0, 0, $canvas.width, $canvas.height);

                var foto = $canvas.toDataURL(); //Esta es la foto, en base 64
                $estado.innerHTML = "Enviando foto. Por favor, espera...";
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "./paginas/guardar_foto.php", true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhr.send(encodeURIComponent(foto)); //Codificar y enviar

                xhr.onreadystatechange = function() {
                    if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
                        console.log("");
                        console.log(xhr);
                        $estado.innerHTML = "";
                    }
                }

                //Reanudar reproducciÃ³n
                $video.play();
            });
        },
        function(error) {
            console.log("Permiso denegado o error: ", error);
            $estado.innerHTML = "No se puede acceder a la cÃ¡mara, o no diste permiso.";
        });
} else {
    alert("Lo siento. Tu navegador no soporta esta caracterÃ­stica");
    $estado.innerHTML = "Parece que tu navegador no soporta esta caracterÃ­stica. Intenta actualizarlo.";
}