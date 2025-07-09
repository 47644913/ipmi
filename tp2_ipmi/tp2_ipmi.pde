PImage[] images = new PImage[3];
String[] textos = { " Yayoi Kusama creó la Sala de Espejos Infinitos en 1965",
"utilizando espejos para transformar la repetición de sus pinturas y obras anteriores en papel en una experiencia perceptiva",
"Filled with the Brilliance of Life es una de las instalaciones más grandes de Kusama hasta la fecha y se realizó para su retrospectiva de 2012 en la Tate Modern." };

int pantalla = 0;
int tiempoCambio = 5000;  // 3 segundos por pantalla
int tiempoInicio;
PFont fuente;


boolean mostrarBoton = false;
int alpha = 0;  // Para efecto fade in del texto
float textoX = -600;

void setup() {
  size(640, 480);
  
  // Carga imágenes
  images[0] = loadImage("img1.jpg");
  images[1] = loadImage("img2.jpg");
  images[2] = loadImage("img3.jpg");

  // Carga fuente
  fuente = loadFont("Arial-BoldItalicMT-48.vlw");  // Usa el nombre exacto de tu fuente generada
  textFont(fuente);
  textAlign(LEFT, TOP);
 

  tiempoInicio = millis();
}

void draw() {
  background(0);

  // Mostrar imagen de la pantalla actual
  image(images[pantalla], 0, 0, width, height);

  // Animación del texto (fade in)
  alpha = constrain((millis() - tiempoInicio) / 5, 0, 255);
 if (textoX < 70) {
    textoX += 5;  // Velocidad de entrada
  }
 fill(255, 200); 
  textSize(22);
  text(textos[pantalla],textoX, 150, 500, 180);

  

  // Cambiar de pantalla automáticamente
  if (millis() - tiempoInicio > tiempoCambio) {
    pantalla++;
    if (pantalla >= 3) {
      pantalla = 2;  // Queda en la última pantalla
      mostrarBoton = true;
    } else {
      tiempoInicio = millis();
      alpha = 0;
      textoX = -600;
    }
  }

  // Mostrar botón en la última pantalla
  if (mostrarBoton) {
    drawBoton();
  }
}

void drawBoton() {
  fill(0, 180);
  rect(width/2 - 75, height - 80, 150, 40, 10);
  fill(255);
  textSize(20);
  textAlign(CENTER,CENTER);
  text("Reiniciar", width/2, height - 60);
}

void mousePressed() {
  if (mostrarBoton) {
    if (mouseX > width/2 - 75 && mouseX < width/2 + 75 &&
        mouseY > height - 80 && mouseY < height - 40) {
      reiniciar();
    }
  }
}

void reiniciar() {
  pantalla = 0;
  tiempoInicio = millis();
  alpha = 0;
  textoX = -600;
  mostrarBoton = false;
}
 
