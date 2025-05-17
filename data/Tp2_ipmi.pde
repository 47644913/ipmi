PImage img1, img2, img3;
PFont font1, font2, font3;

String texto1 = "infinity mirror rooms";
String texto2 = " se Utilizan espejos, luces LED y superficies reflexivas para crear la ilusión de un espacio infinito. Cuando entras en el espacio, tu reflejo se multiplica repetidamente, lo que hace que la habitación parezca sin fin";
String texto3 = "Yayoi Kusama es una de las artistas plásticas más reconocidas de la década, ya que ha logrado llevar a distintos lugares del mundo el arte feminista, el minimalismo y el pop art de sus creaciones.";

float posYtext = 200;
float posXtext = 50;
float tam = 20;
float endBoard = 600;

int posX = 0;
int ancho = 500;
int dir = 1;
int slideActual = 1;

void setup() {
  size(640, 480);
  font1= loadFont("AgencyFB-Bold-40.vlw");
  font2= loadFont("AgencyFB-Bold-40.vlw");
  font3= loadFont("AgencyFB-Bold-40.vlw");
  
  img1 = loadImage("imagen1.jpg");
  img2 = loadImage("imagen2.jpg");
  img3 = loadImage("imagen3.jpg");
  textAlign(LEFT);
}
void draw() {
  background(255);


  //slide 1 - texto crece

  if (slideActual==1) {
    image(img3, 0, 0, 640, 480);
    textFont(font1);
    textSize(tam);
    text(texto3, posX, 0, 550, ancho);
    tam+=0.1;
    if (tam>40) {
      slideActual=2;
    }
  }

  //slide 2 - texto entra desde la derecha
  if (slideActual==2) {
    image(img2, 0, 0, 640, 480);
    textFont(font2);
    textSize(30);
    text(texto2, endBoard, 0, 550, 640);
    endBoard -=4;
    tam -=0.1;
    if (endBoard<10) {
    }
  }
  slideActual=3;



  //slide 3 - texto sube desde abajo
  if (slideActual==3) {
    image(img1, 0, 0, 640, 480);
    textFont(font1);
    textSize(20);
    if (posYtext<mouseX) {
    }
  }
  text(texto1, 0, 250, 550, ancho);
}
void mouseClicked() {

  if (slideActual==6) {
    if (mouseX>=500&&mouseX<=600&&mouseY>=350&&mouseY<=470) {
    }
  }
  //reiniciar todas las variables de animacion
  posYtext= 200;
  posXtext= 0;
  posX= 0;
  endBoard= width;
  tam= 20;
  dir= 1;
}
