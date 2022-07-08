 
 
 void texto(String texto, float x, float y, float tam) {
    textFont(fuente);
    textSize(tam);
    textAlign(CENTER);
    text(texto, x, y);
}


 void boton(String texto, float x, float y, float w, float h) {
    fill(3, 72, 113);
    noStroke ();
    rectMode(CENTER);
    rect(x, y, w, h, 10);
  
    textFont(fuente);
    fill(255);
    textSize(30);
    textAlign(CENTER, CENTER);
    text(texto, x, y);
}


 void boton2(String texto, float x, float y, float w, float h) {
    textFont(fuente);
    fill(255);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(texto, x, y);
}
