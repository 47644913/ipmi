

size(800,400);
background(255);



//cabeza 
fill(#E8CDA4 );
ellipse(600,200,240,280);

//ojo izquierdo
fill(255);
ellipse(550,150,80,60);
fill(#675625);
ellipse(550,150,40,40);
fill(#0A0800);
ellipse(550,150,20,20);

//ojo derecho
fill(255);
ellipse(650,150,80,60);
fill(#675625);
ellipse(650,150,40,40);
fill(#0A0800);
ellipse(650,150,20,20);

//pelo
stroke(0);
strokeWeight(2);


//ceja izquierda
strokeWeight(3);
stroke(0);
line(580,110,520,116);

//ceja derecha
strokeWeight(3);
stroke(0);
line(680,116,620,110);

//boca
fill(#E0A8CA);
stroke(255,105,180);
strokeWeight(5);
arc(600,250,100,50,0,PI,PIE);

//nariz
stroke(#AF9C7F);
line(600,180,580,220);
line(600,220,580,220);
