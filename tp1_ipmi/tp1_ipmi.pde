PImage FOTO;
//cargar la imagen en la variable
FOTO = loadImage("FOTO.png");


size(800,400);
background(#D6D6C7);

image(FOTO ,0,0, 400,400);


//cabeza 
fill(#FFD1B2);
ellipse(600,200,240,280);

//ojo izquierdo
fill(255);
ellipse(550,150,80,60);
fill(#643C20);
ellipse(550,150,40,40);
fill(#0A0800);
ellipse(550,150,20,20);

//ojo derecho
fill(255);
ellipse(650,150,80,60);
fill(#643C20);
ellipse(650,150,40,40);
fill(#0A0800);
ellipse(650,150,20,20);

//pelo
fill(#4B2912);
arc(598,120,220,125, PI + 0.5, TWO_PI - 0.5, CHORD);
fill(#4B2912);
arc(490+30,245,80,345, HALF_PI, PI + HALF_PI, CHORD);


//ceja izquierda
fill(#643C20);
strokeWeight(5);
stroke(#643C20);
line(580,110,520,116);

//ceja derecha
fill(#643C20);
strokeWeight(5);
stroke(#643C20);
line(680,116,620,110);

//boca
fill(#FFFFFF);
stroke(255,105,180);
strokeWeight(5);
arc(600,250,100,50,0,PI,PIE);

//nariz
stroke(#AF9C7F);
line(600,180,580,220);
line(600,220,580,220);

//cuello
stroke(#FFD1B2);
fill(#FFD1B2);
rect(600 - 25,340,50,20);

//ropa
fill(255,100,150);
rect(550,360,100,100);

//manga izquierda
triangle(550,340,550,450,450,450);
//manga derecha
triangle(650,340,650,550,470,450);
