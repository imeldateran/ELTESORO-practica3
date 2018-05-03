personajesa a1;
personajesa a2;
personajesa a3;
personajesa a4;
personajesa a5;
personajesa a6;

personajesb b1;
personajesb b2;
personajesb b3;
personajesb b4;
personajesb b5;


personajesa j1;
personajesb j2;

PImage peruno;
PImage perdos;
PImage pertres;
PImage percuatro;
PImage percinco;

PImage perseis;
PImage persiete;
PImage perocho;
PImage pernueve;
PImage perdiez;

PImage inicio;
PImage instrucciones;
PImage selecciona;
PImage seleccionb;
PImage pelea;

PImage inicioa;
PImage iniciob;

int pantalla = 0;
int jugador1;
int jugador2;
PFont titulo;
int turno = 0;
int ganador = 0;
int contador1 = 0;
int contador2 = 0;


int pant=0;

void setup(){
size(1000,700);

peruno = loadImage("auno.png");
perdos = loadImage ("ados.png");
pertres = loadImage("atres.png");
percuatro = loadImage("acuatro.png");
percinco = loadImage("acinco.png");

perseis = loadImage("buno.jpg");
persiete = loadImage("bdos.png");
perocho = loadImage("btres.png");
pernueve= loadImage("bcuatro.png");
perdiez = loadImage("bcinco.png");

inicio = loadImage ("pinicioa.jpg");
instrucciones = loadImage ("pinstrucciones.jpg");
selecciona = loadImage ("pselecciona.jpg");
seleccionb = loadImage ("pseleccionb.jpg");
pelea = loadImage ("ppelea.jpg");

inicioa = loadImage ("piniciob.jpg");
iniciob = loadImage ("pinicioc.jpg");

a1=new personajesa ("a",2,1,0);
a2=new personajesa("b",2,1,1);
a3=new personajesa ("c",2,1,2);
a4=new personajesa("d",2,1,3);
a5=new personajesa("e",2,1,4);

b1=new personajesb("a",2,1,0);
b2=new personajesb("b",2,1,1);
b3=new personajesb("c",2,1,2);
b4=new personajesb("d",2,1,3);
b5=new personajesb("e",2,1,4);

}

void draw(){
  
switch(pantalla){
  case 0:
  
  inicio();
  break;
  case 1:
  instrucciones();
  break;
  case 2:
  seleccion1();
  pushMatrix();
  translate(150,450);
  noStroke();
//dibujar
image(peruno, -100,-350, 160,360);


 popMatrix();
 pushMatrix();
 translate(300,480);
 noStroke();
//dibujar
image(perdos, -75,-350, 180,360);


 popMatrix();  
 pushMatrix();
 translate(480,480);

 noStroke();
//dibujar
image(pertres, -55,-350, 180,360);

  popMatrix();
  pushMatrix();
  translate(630,480);

  noStroke();
//dibujar
image(percuatro, -20,-350, 180,360);

  popMatrix();
  pushMatrix();
  translate(790,480);
 
  noStroke();
  //dibuajar
  image(percinco, 10,-350, 180,360);

  popMatrix();
  pushMatrix();
 
  popMatrix();
  textSize(40);
fill(#f31f1f);
text("1",130,550);
textSize(40);
fill(#f31f1f);
text("2",330,550);
textSize(40);
fill(#f31f1f);
text("3",520,550);
textSize(40);
fill(#f31f1f);
text("4",700,550);
textSize(40);
fill(#f31f1f);
text("5",850,550);

  break;
  
  case 3:
  seleccion2();
  pushMatrix();
  translate(150,450);
 
  noStroke();

 image(peruno, -100,-350, 160,360);
 popMatrix();
 pushMatrix();
 translate(300,480);
noStroke();

image(perdos, -75,-350, 180,360);
  popMatrix();
  pushMatrix();
  translate(480,480);
noStroke();

image(pertres, -55,-350, 180,360);

  popMatrix();
  
   pushMatrix();
  translate(630,480);

noStroke();
image(percuatro, -20,-350, 180,360);

  popMatrix();
  
  pushMatrix();
  translate(790,480);

noStroke();

image(percinco, 10,-350, 180,360);

  popMatrix();
  
  pushMatrix();
  translate(920,480);

noStroke();


  popMatrix();
  textSize(40);
fill(#FFFFFF);
text("6",100,550);
textSize(40);
fill(#FFFFFF);
text("7",300,550);
textSize(40);
fill(#FFFFFF);
text("8",480,550);
textSize(40);
fill(#FFFFFF);
text("9",630,550);
textSize(40);
fill(#FFFFFF);
text("0",790,550);
//textSize(20);
//fill(#FFFFFF);
//text("y",920,550);
  break;
  
  case 4:
  pelea();
  break;
  
  case 5:
  resultado();
  break;
  
  }

}

void inicio(){
 background(0,0,0 );
image (inicio, 0,0);
textSize(80);
fill(#080808);
text("EL TESORO",270,350);
textSize(30);
fill(#080808);
text("COMIENZA CON UN CLICK",290,420);

if(mousePressed){
 
pantalla=1;
  }
}

// intrucciones
void instrucciones(){
  background(0,0,0);
  image (instrucciones,0,0);
fill(#cbac31);
textSize(70);
text("INSTRUCCIONES",50,250);

fill(#040404);
textSize(20);
text("SELECCIONA JUGADOR PRESIONANDO  1 2 3 4 5 ",20,670);
fill(#040404);
textSize(20);
text("SELECCIONA JUGADOR PRESIONANDO 6 7 8 9 0 ",20,650);
fill(#040404);
textSize(20);
text("PERSONAJE A PELEA CON a",20,630);
fill(#040404);
textSize(20);
text("PERSONAJE B PELEA CON b",20,610);

textSize(20);
fill(#040404);
text("Presiona Shift PARA CONTINUAR",20,690);
if(keyPressed){
    pantalla=2;
  }
}



void seleccion1(){
  
background(0,0);
image (selecciona,0,0);
fill(#ffd739);
textSize(40);
text("Selecciona personaje A",240,90);


if(keyPressed){
  if(key == '1'){
   
  jugador1 = 0;
  pantalla=3;  
  }
  else if(key == '2'){
   
  jugador1 = 1;
  pantalla=3;  
  }
  else if(key == '3'){
  
  jugador1 = 2;
  pantalla=3;  
  }
  else if(key == '4'){
  
  jugador1 = 3;
  pantalla=3;  
  }
  else if(key == '5'){
   
  jugador1 = 4;
  pantalla=3;  
  }
  
}
}


void seleccion2(){
background(0,0);
image (seleccionb,0,0);
fill( #ffd739);
textSize(40);
text("Selecciona personaje B",240,70);

if(keyPressed){
  if(key == '6'){
  
  jugador2 = 0;
  pantalla=4;  
  }
  else if(key == '7'){
  
  jugador2 = 1;
  pantalla=4;  
  }
  else if(key == '8'){
  
  jugador2 = 2;
  pantalla=4;  
  }
  else if(key == '9'){
  
  jugador2 = 3;
  pantalla=4;  
  }
  else if(key == '0'){
  
  jugador2 = 4;
  pantalla=4;  
  }
  
  }
}

// Pelea

void pelea(){
  background(0);
  image (pelea,0,0);
  fill(#df25ba);
  textSize(50);
text("Puntaje",240,690);
textSize(20);
fill(#fbf9fb);
text("ATACA CON a",200,200);
//_______________________________________
fill(#df25ba);
  textSize(50);
text("Puntaje",240,690);
textSize(20);
fill(#fbf9fb);
text("ATACA CON a",200,200);
//_______________________________________
noStroke();
fill(#e7c12b);
ellipse(230, 100, 80, 80);//jugador 1
noStroke();
fill(#e7c12b);
ellipse(720, 100, 80, 80);//jugador 2

//_______________________________________
fill(#df25ba);
  textSize(50);
text("Puntaje",700,690);
textSize(20);
fill(#df2dbb);
text("ATACA CON b",700,200);

//_______________________________________
fill(#df25ba);
  textSize(50);
text("Puntaje",700,690);
textSize(20);
fill(#df2dbb);
text("ATACA CON b",700,200);

 if(jugador1 == 0){
   a1.dibujar();
  }
  else if(jugador1 == 1){
     a2.dibujar();
  }
  else if(jugador1 == 2){
     a3.dibujar();
  }
  else if(jugador1 == 3){
    a4.dibujar();
  }
    else if(jugador1 == 4){
     a5.dibujar();
  }
  
   
    else if(jugador1 == 5){
     a6.dibujar();
  }
  
  // personaje 2
  if(jugador2 == 0){
     b1.dib();
    }
    else if(jugador2 == 1){
        b2.dib();
          
  }
    else if(jugador2 == 2){
            b3.dib();
  }
    else if(jugador2 == 3){
           b4.dib();
  }
    else if(jugador2 == 4){
  b5.dib();
    }
    else if(jugador2 == 5){
  //m6.dib();
    }


  
// pela 1
//jugador 1

      if(key == 'a'){
        textSize(50);
        fill(#df25ba);
  textSize(50);
text("Puntaje",240,690);
textSize(20);
fill(#fbf9fb);
text("ATACA CON a",200,200);
//_______________________________________
noStroke();
fill(#e7c12b);
ellipse(230, 100, 80, 80);//jugador 1
noStroke();
fill(#e7c12b);
ellipse(720, 100, 80, 80);//jugador 2

//_______________________________________
fill(#df25ba);
  textSize(50);
text("Puntaje",700,690);
textSize(20);
fill(#df2dbb);
text("ATACA CON b",700,200);


     
    pantalla = 5;
      }
       
       //jugador 2
      if(key == 'b'){
        textSize(50);
        fill(#df25ba);
  textSize(50);
text("Puntaje",240,690);
textSize(20);
fill(#fbf9fb);
text("ATACA CON a",200,200);

noStroke();
fill(#e7c12b);
ellipse(230, 100, 80, 80);//jugador 1
noStroke();
fill(#e7c12b);
ellipse(720, 100, 80, 80);//jugador 2


fill(#df25ba);
  textSize(50);
text("Puntaje",700,600);
textSize(20);
fill(#df2dbb);
text("ATACA CON b",700,200);
  
  pantalla = 6;
}
    }


void resultado(){
  fill(#D9CEDE);
textSize(30);
text("Personaje uno GANADOR ",340,300);
fill(#D9CEDE);
textSize(30);
text("PRESIONA 0 PARA INICIAR ",340,400);
 noFill();
  strokeWeight(random(0, 500));//anho del arcoiris
 stroke(random(255), random(255), random(255)); //colores random
 float dia = random(300, 600); //diameter
  ellipse(450, 450, 900, 3000);  //forma

if (keyPressed){
     if(key =='0'){
      pantalla = 0;
     }
    }
 


}

void resultado1(){
  
  

fill(#D9CEDE);
textSize(30);
text("personaje dos GANADOR ",300,300);
fill(#D9CEDE);
textSize(30);
text("PRECIONA 0 PARA INICIAR",300,300);
 noFill();
  strokeWeight(random(0, 500));//anchdel arcoiris
 stroke(random(255), random(255), random(255)); //colores random
 float dia = random(300, 600); //diametro
  ellipse(450, 450, 900, 3000);  //forma


  if (keyPressed){
     if(key =='0'){
      pantalla = 0;
     }
    }
 


}