int x = 100;
int y = 100;
int gravity = 2;
int v = -50;
int pipeX = 400;
int upperPipeHeight = 200;
int lowerPipeHeight = -170;
int birdY = y;
int birdX = x + 10;

int pipeWidth = 50;
int pipeGap = 500 - (-lowerPipeHeight + upperPipeHeight);
int lowerY = upperPipeHeight + pipeGap;
int lowerPipeTop ;

void setup() {
  size(500,500);
  
}



void draw() {
  background(88, 1, 131);
  stroke(0,0,0);
  fill(16,255,13);
  ellipse(x,y,20,20);
  y += gravity;
 
  fill(16, 255, 13);
  rect(pipeX, 0, pipeWidth, upperPipeHeight);
  pipeX--;
  fill(16, 255, 13);
  rect(pipeX, 500, pipeWidth, lowerPipeHeight);
  teleportPipes();
  if(intersectsPipes() == true) {
   print("Game Over ");
   
  }
print();
 
  
}

void mousePressed() {
y += v;
}

void teleportPipes() {
  
  if(pipeX < 0) {
    pipeX = 400;
    upperPipeHeight = (int) random(140,235);
    lowerPipeHeight = (int) random(-225,-190);
    
    pipeGap = 500 - (-lowerPipeHeight + upperPipeHeight);
 lowerPipeTop = upperPipeHeight + pipeGap;
  
    print( " pipe gap is " + pipeGap);
     print(" low is " + lowerPipeHeight);
  print(" up is " + upperPipeHeight);
  }
  
}

boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX + pipeWidth)){
          return true; }
     else if (birdY > lowerPipeTop && birdX > pipeX && birdX < (pipeX + pipeWidth)) {
          return true; }
     else { return false; }
}
  