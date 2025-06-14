int tileSize = 40; 
PImage img;
boolean colorAlterno = false;

void setup(){ 
size(800, 400);
img = loadImage("ajedrez.jpg");
image(img, 0, 0, 400, 400);
noStroke(); 
rectMode (CORNER); 
println(img);

}
void draw(){
background(0);
image(img, 0, 0, 400, 400);
createOpArt(mouseX);

} 
void createOpArt(float offset){

int cols = width / tileSize; 
int rows = height / tileSize;

for (int y = 0; y< rows; y++) {
for (int x = 0; x< cols; x++) { 
float xPos = x * tileSize + 400; 
float yPos = y * tileSize; 

float distortion = sin(radians(x * 10 + y * 15 + offset * 0.5)) * 5;

if ((x + y) % 2 == 0){
  fill(colorAlterno ? color (255, 0, 0) : 255); 
} else{
fill(colorAlterno ? color(0, 0, 255) : 0); 
}
rect(xPos + distortion, yPos, tileSize, tileSize);
} 
} 
}

void mousePressed(){
  if (mouseButton == LEFT) {
    colorAlterno = !colorAlterno;  // Alternar colores con clic izquierdo
  }
}
