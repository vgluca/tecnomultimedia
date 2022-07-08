 void juego() {
    image (imagenes[0], -200, -200);

  //movimiento de pez + red dentro del cuadro
    float fondored = 1000/ (puntos+8);
    if (pelotaX < 0 || pelotaX > width) velX = - velX;
    if (pelotaY > height) {
    velY = - velY;

    float distancia = abs(mouseX - pelotaX); //abs da valor absoluto positivo a un número
    if (distancia < fondored) puntos += 1;
    else fallos += 1;
    } else velY += 1;

    pelotaX += velX;
    pelotaY += velY;


  //pelota y base
    image (imagenes[1], pelotaX, pelotaY, 100, 100);
    image (imagenes[2], mouseX-fondored, 400, fondored*2, 250);
    noStroke();
    fill(57, 48, 44);
    rect(mouseX, 410, fondored*2, 20);

  //anotacion de puntos
    fill (255);
    textSize (20);
  //textAlign (CENTER);
    text ("PUNTOS: " + puntos, 285, 40);
    text ("FALLOS: " + fallos, 480, 40);
}

 void ganapierde() {
    if (puntos == 10 && fallos < 5) {
    pantalla = 2;
    puntos = 0;
    fallos = 0;
    } else if (fallos == 5 && puntos < 10) {
    pantalla = 3;
    puntos = 0;
    fallos = 0;
  }
}
