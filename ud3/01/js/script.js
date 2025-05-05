var titulo=document.getElementById("titulo");
titulo.innerText="Titulo Nuevo";
 
var parrafos=document.getElementsByClassName("parrafo");
parrafos[0].innerText="Parrafo 1 modificado";
parrafos[1].innerText="Parrafo 2 modificado";
parrafos[2].innerText="Parrafo 3 modificado";
 
var body=document.getElementById("cuerpo");
cuerpo.style.backgroundColor="#f4f4f4";
cuerpo.style.textAlign="center";
 
titulo.style.color="#333";
titulo.style.fontWeight="bold";
titulo.style.marginBottom="15px";
titulo.style.textTransform="uppercase";
 
for (var i = 0; i < parrafos.length; i++) {
    parrafos[i].style.fontSize = "18px";
    parrafos[i].style.padding = "10px";
    parrafos[i].style.width = "60%";
    parrafos[i].style.borderLeft = "5px solid";
    parrafos[i].style.borderRadius = "5px";
    parrafos[i].style.lineHeight = "1.6";
    parrafos[i].style.margin = "0 auto 15px";
}
 
parrafos[0].style.color="#e74c3c";
parrafos[0].style.backgroundColor="#ffe6e6";
parrafos[0].style.borderColor="#c0392b";
 
parrafos[1].style.color="#2ecc71";
parrafos[1].style.backgroundColor="#eaffea";
parrafos[1].style.bordercolor="#27ea60";
 
parrafos[2].style.color="#3498db";
parrafos[2].style.backgroundColor="#e6f2ff";
parrafos[2].style.bordercolor="#2980b9";
 
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("boton1").addEventListener("click", saludar);
    document.getElementById("boton2").addEventListener("click", cambiarColor);
    document.getElementById("boton3").addEventListener("click", cambiarParrafos);
});
 
function saludar() {
    alert("Hola! Bienvenido!");
}
 
function cambiarColor() {
    const cuerpo = document.body;
    const titulo = document.querySelector("h1");

    if (cuerpo.style.backgroundColor === "black") {
        cuerpo.style.backgroundColor = "white";
        cuerpo.style.color = "black";
        if (titulo) {
            titulo.style.color = "black";
        }
    } else {
        cuerpo.style.backgroundColor = "black";
        cuerpo.style.color = "white";
        if (titulo) {
            titulo.style.color = "white";
        }
    }
}

let parrafosModificados = false;
function cambiarParrafos() {
    const parrafos = document.querySelectorAll("p");
    if (!parrafosModificados) {
        parrafos.forEach(parrafo => {
            parrafo.style.fontSize = "20px";
            parrafo.style.letterSpacing = "2px";
            parrafo.style.transform = "rotate(1deg)";
            parrafo.style.fontWeight = "bold";
        });
        parrafosModificados = true;
    } else {
        parrafos.forEach(parrafo => {
            parrafo.style.fontSize = "";
            parrafo.style.letterSpacing = "";
            parrafo.style.transform = "";
            parrafo.style.fontWeight = "";
        });
        parrafosModificados = false;
    }
}