 class personajesb{
  String nombre;
  int salud;
  int ataque;
  int dib;
  int perfil;
  
  personajesb(String nombre_, int salud_, int ataque_, int dib_)
  {
    nombre = nombre_;
    salud = salud_;
    ataque = ataque_;
    dib = dib_;
   
  }

void dib(){
  switch(dib){
    case 0:
    //Personaje1

pushMatrix();
translate(750,450);
noStroke();
image(perseis, -100,-220, 220,400);
popMatrix();
    
    break;
    case 1:
   //personaje 2
pushMatrix();
translate(750,450);
noStroke();
image(persiete, -100,-220, 220,400);
popMatrix();
    
    break;
    
  case 2:
  //personaje 3
  pushMatrix();
 translate(750,450);
noStroke();
image(perocho, -100,-220, 220,400);
popMatrix();

break;
case 3:
//personaje 4
pushMatrix();
translate(750,450);
noStroke();
image(pernueve, -100,-220, 220,400);

popMatrix();

break;
case 4:
// personaje 5

pushMatrix();
translate(750,450);
noStroke();
image(perdiez, -100,-220, 220,400);
popMatrix();

break;

  }
  }
}