// Array(Lista) de imágenes
const imagenes = [
    'https://picsum.photos/200?random=1',
    'https://picsum.photos/200?random=2',
    'https://picsum.photos/200?random=3',
    'https://picsum.photos/200?random=4',
    'https://picsum.photos/200?random=5',
    'https://picsum.photos/200?random=6',
    'https://picsum.photos/200?random=7',
    'https://picsum.photos/200?random=8'
];

const tablero = document.getElementById('tablero');

for (let i = 0; i < 6; i++) {
    const casilla = document.createElement('div');
    casilla.classList.add('casilla');
    casilla.addEventListener('click', () => {
        const indiceAleatorio = Math.floor(Math.random() * imagenes.length);
        casilla.innerHTML = `<img src="${imagenes[indiceAleatorio]}" alt="Imagen aleatoria">`;
    });
    tablero.appendChild(casilla);
    // Añadir un evento de hover que cambie de color una casilla al pasar el ratón por encima y lo devuelva a su color original al quitar el ratón
    casilla.addEventListener('mouseover', () => {
        casilla.style.backgroundColor = 'lightblue';
    });
    casilla.addEventListener('mouseout', () => {
        casilla.style.backgroundColor = "#e0e0e0";
    });
}