//Luca Vásquez G (88254/8)
//link YouTube: https://youtu.be/saZnhFYvIss

float pelotaX = 200;
float pelotaY = 100;
float velX = 20;
float velY = 0; // velocidad de la pelota

int w=175, h=55; //tamaños de botones

int puntos = 0;
int fallos = 0;

int pantalla = 0;

PFont fuente;
PImage [] imagenes;

boolean isMouseOver(int tx, int ty, int x, int y) {
    return mouseX >= tx && mouseX <= tx + x && mouseY >= ty && mouseY <= ty + y;
}



 void setup() {
  size(800, 500);

    imagenes = new PImage[3];
    for (int i=0; i<imagenes.length; i++) {
    imagenes[i] = loadImage("imagen"+i+".png");
    }
    fuente = loadFont ("ShowcardGothic-Reg-48.vlw");
}



 void draw() {

  //fondo
    image(imagenes[0], -200, -200);


  //pantallas
    if (pantalla == 0) {

      
  //menú
    fill(3, 72, 113);
    texto("¡Atrapa al pez!", width/2+3, height/3+3, 60); //Borde
    fill(255);
    texto("¡Atrapa al pez!", width/2, height/3, 60); //Título
    boton("Jugar", width/2, height/2+50, w, h);
    boton2("Instrucciones", width/2, height/2+120, w, h);
    boton2("Créditos", width/2, height/2+180, w, h);
  } else if (pantalla == 1) {

    
  //juego
    juego();
    ganapierde();
  } else if (pantalla == 2) {

    
  //victoria
    fill(3, 72, 113);
    texto("¡Lo atrapaste,\n felicidades!", width/2+3, height/2-100+3, 60);
    fill(255);
    texto("¡Lo atrapaste,\n felicidades!", width/2, height/2-100, 60);
    boton("Inicio", width/2, height/2+100, w, h);
  } else if (pantalla == 3) {

    
  //derrota
    fill(3, 72, 113);
    texto("Oh no...\n ¡Se ha escapado!", width/2+3, height/2-100+3, 60);
    fill(255);
    texto("Oh no...\n ¡Se ha escapado!", width/2, height/2-100, 60);
    boton("Reiniciar", width/2, height/2+100, w, h);
    boton("Inicio", width/2, height/2+170, w, h);
  } else if (pantalla == 4) {

    
  //créditos
    fill(3, 72, 113);
    texto("Créditos", width/2+3, height/4+3, 60);
    fill(255);
    texto("Créditos", width/2, height/4, 60);
    texto("Luca Vásquez\n\nLegajo 88254/8\n\nComisión 2\n\nProf. Matías Jauregui Lorda", width/2, height/3+50, 25);
    boton("Volver", width/2, height-60, w, h);
  } else if (pantalla == 5) {

    
  //instrucciones
    fill(3, 72, 113);
    texto("Instrucciones", width/2+3, height/4+3, 60);
    fill(255);
    texto("Instrucciones", width/2, height/4, 60);
    texto("¡SIMPLE!", width/2, height/3+50, 30);
    texto("El objetivo es anotar 10 puntos\ny tener menos de 5 fallos\n\n¡Asegurate de que el pescado\ntoque el fondo de la red\npara anotar!", width/2, height/3+80, 25);
    boton("Volver", width/2, height-60, w, h);
  }
}



 void mouseReleased() {
  // inicio
    if (pantalla == 0 && isMouseOver(width/2-w/2, height/2+50-h/2, w, h)) {
    pantalla = 1;
    } else if (pantalla == 0 && isMouseOver(width/2-w/2, height/2+120-h/2, w, h)) {
    pantalla = 5;
    } else if (pantalla == 0 && isMouseOver(width/2-w/2, height/2+180-h/2, w, h)) {
    pantalla = 4;
  }


  // victoria
    if (pantalla == 2 && isMouseOver(width/2-w/2, height/2+100-h/2, w, h)) {
    pantalla = 0;
  }


  // derrota
    if (pantalla == 3 && isMouseOver(width/2-w/2, height/2+100-h/2, w, h)) {
    pantalla = 1;
    } else if (pantalla == 3 && isMouseOver(width/2-w/2, height/2+170-h/2, w, h)) {
    pantalla = 0;
  }


  //créditos e instrucciones
    if (pantalla == 4 && isMouseOver(width/2-w/2, height-100-h/2, w, h)) {
    pantalla = 0; 
    } else if (pantalla == 5 && isMouseOver(width/2-w/2, height-60-h/2, w, h)) {
    pantalla = 0;
  }
}
