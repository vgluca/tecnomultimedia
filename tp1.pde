//Luca Vásquez G (88254/8) - C.2 Matías Jauregui Lorda.

PFont fuente, fuente1;
PImage fondo, fondo1, fondo2, fondofinal, sticker, sticker1, sticker2, sticker3, sticker4, sticker5;
float suma, suma2, suma3, suma4, suma5, suma6, coloor, keypressed;

void setup() { 
  size (750, 450);
  background(0);
  frameRate(50);
  
  //variables
  fuente = loadFont ("Leichenhaus-48.vlw"); 
  //fuente1 = loadFont ("VENOM-48.vlw");
  fondo = loadImage ("venomtitulo.png");
  fondo1 = loadImage ("araña.png");
  fondo2 = loadImage ("venomrojo.png");
  fondofinal = loadImage ("fondofinal.jpg");
  sticker = loadImage ("venomcara.png");
  sticker1 = loadImage ("v.png");
  sticker2 = loadImage ("venomrojo.png");
  sticker3 = loadImage ("mancha2.png");
  sticker4 = loadImage ("mancha.png");
  sticker5 = loadImage ("cara.png");
  coloor= 255;
  suma = 300;
  suma2 = 10;
  suma3 = 0;
  suma4 = 300;
  suma5 = 750;
  suma6 = -20;

}

void draw() {
  println( "contador: " + frameCount );
  
  
//1
  if ((frameCount>0) && (frameCount<289)) {
  background(0);
    imageMode(CENTER);
    image(fondo1, width/2, height/2, suma, suma2);
    image(fondo, width/2, height/2, suma, suma2);
    suma +=0.9;
    suma2 +=0.9;
  }
  
//2
  if ((frameCount>290) && (frameCount<450)) {
    image(sticker4, random(0, 750), random(0, 450));
  }
  else if ((frameCount>450) && (frameCount<600)) {
  textFont(fuente);
    textSize(30);
    fill(coloor);
    textAlign(CENTER);
    text("PRODUCTION", width/2, 120);
    textSize(20);
    text("Marvel Entertainment", width/2, 170);
    text("Columbia Pictures", width/2, 220);
    text("Arad Productions", width/2, 270);
    text("Matt Tolmach Productions", width/2, 320);
    text("Pascal Pictures", width/2, 370);
   }  
   
//3  
   if ((frameCount>600) && (frameCount<700)) {
   image(sticker, random(0, 750), random(0, 450));
   image(sticker3, random(0, 750), random(0, 450));
  }
   else if ((frameCount>700) && (frameCount<800)) {
   image(sticker3, random(0, 750), random(0, 450));
  }
   else if ((frameCount>800) && (frameCount<850)) {
   //textFont(fuente);
    textSize(30);
    fill(coloor);
    textAlign(CENTER);
    text("Ditected by", width/2, 200);
    text("Ruben Fleischer", width/2, 250);
  }
   else if ((frameCount>870) && (frameCount<1050)) {
    image(sticker5, suma3, suma4);
    suma4 += 0;
    suma3 += 4.3;
  }
  
 //4
   //textFont(fuente);
   if ((frameCount>1050) && (frameCount<1150)) {
    textSize(30);
    fill(coloor);
    textAlign(CENTER);
    text("ACTORS", 310, 100);
    textSize(20);
    text("EDDIE BROCK (VENOM)", 180, 150);
    text("Tom Hardy", 180, 200);
    text("ANNE WEYING", 425, 150);
    text("Michelle Williams", 425, 200);
    text("DRA. DORA SKIRTH", 180, 300);
    text("Jenny Slate", 180, 350);
    text("CARLTON DRAKE", 425, 300);
    text("Riz Ahmed", 425, 350);
  }
   else if ((frameCount>1150) && (frameCount<1320)) {
    image(sticker3, random(0, 750), random(0, 450));
  }
  
//5
   else if ((frameCount>1320) && (frameCount<1450)) {
    background (220, 0, 5);
    image(sticker1, suma5, suma2);
    suma2 -= 0;
    suma5 -= 0.9;
    textFont(fuente);
    textSize(30);
    fill(coloor);
    textAlign(CENTER);
    text("MUSIC", 200, 200);
    text("Ludwig Goransson", 200, 250); 
  }

//6
   if ((frameCount>1450) && (frameCount<1600)) {
   image(sticker4, random(0, 750), random(0, 450));
   }
   else if ((frameCount>1600) && (frameCount<1730)) {
    image(sticker2, suma6, suma4);
    suma4 += 0;
    suma6 += 0.9;
    textFont(fuente);
    textSize(30);
    fill(coloor);
    textAlign(CENTER);
    text("PHOTOGRAPHIC DIRECTORS", 500, 220);
    text("Matthew Libatique", 500, 270);
   }
  
//7
  if ((frameCount>1800) && (frameCount<2200)) {
   background (0);
   if ((mouseX>0) && (mouseX<250)) {
   background (0);
   }
   if ((mouseX>250) && (mouseX<500)) {
   image (fondofinal, width/2, height/2);
   } 
   if ((mouseX>500) && (mouseX<750)) {
   background (0);
   }
   if ((frameCount>1800) && (frameCount<2200)) {
   }
   textSize(100);
   fill(coloor);
   textFont(fuente);
   textAlign(CENTER);
   text("THE END", mouseX, mouseY);
   }
}
   
