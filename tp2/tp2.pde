//https://youtu.be/uMG-dM5t6d8
//Vásquez, Luca (88254/8)

int gg = 0;
int i=0;


void setup() {
  size(500, 500);
  background (255);
  
}

void draw() {
  for( int i = 5; i<800; i = i+10){
   strokeWeight(5);
   stroke(random(0,255));
   noFill();
   circle( width/2,height/2,i);
  } 
  
  if (keyPressed) {
  if (key == 'r' || key == 'R');
  i=0;
  gg=0;
}
  
  
}
