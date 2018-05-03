
 class personajesa{
  String nombre;
  int salud;
  int ataque;
  int dib;

  
  personajesa(String nombre_, int salud_, int ataque_,  int dib_)
  {
    nombre = nombre_;
    salud = salud_;
    ataque = ataque_;
    dib = dib_;
   
  }

void dibujar(){
  switch(dib){
    case 0:
    //Personaje1
    pushMatrix();
translate(300,450);
noStroke();
image(peruno, -120,-220,220,400);
popMatrix();
    
    break;
    case 1:
   //personaje 2

pushMatrix();
translate(300,450);
noStroke();
image(perdos, -120,-220, 220,400);
popMatrix();
    
    break;
    case 2:
  //personaje 3
  
pushMatrix();
translate(300,450);
noStroke();
image(pertres, -120,-220, 220,400);
popMatrix();

break;
case 3:
//personaje 4


pushMatrix();
translate (300,450);
noStroke();
image(percuatro, -120,-220, 220,400);
popMatrix();

break;
case 4:
// personaje 5

pushMatrix();
translate(300,450);
noStroke();
image(percinco, -120,-220, 220,400);
popMatrix();


break;
  }
  }
 }