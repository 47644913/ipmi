let tileSize = 40;
let img;
let colorAlterno = false;

function preload() {
  img = loadImage('assets/ajedrez.jpg');
}

function setup() {
  createCanvas(800, 400);
  imageMode(CORNER);
  noStroke();
  console.log("Imagen cargada:", img);
}

function draw() {
  background(0);
  image(img, 0, 0, 400, 400);

  
  createOpArt(mouseX);
}

function createOpArt(offset) {
  let cols = width / tileSize;
  let rows = height / tileSize;

  for (let y = 0; y < rows; y++) {
    for (let x = 0; x < cols; x++) {
      let xPos = x * tileSize + 400; 
      let yPos = y * tileSize;

      let distortion = sin(radians(x * 10 + y * 15 + offset * 0.5)) * 5;

      if ((x + y) % 2 == 0) {
        fill(colorAlterno ? color(255, 0, 0) : 255);
      } else {
        fill(colorAlterno ? color(0, 0, 255) : 0);
      }

      rect(xPos + distortion, yPos, tileSize, tileSize);
    }
  }
}


function obtenerColor(x, y, alterno) {
  if ((x + y) % 2 == 0) {
    return alterno ? color(255, 0, 0) : color(255);
  } else {
    return alterno ? color(0, 0, 255) : color(0);
  }
}

function mousePressed() {
  if (mouseButton === LEFT) {
    colorAlterno = !colorAlterno;
  }
}
