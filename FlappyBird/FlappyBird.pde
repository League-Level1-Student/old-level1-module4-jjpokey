int x = 100;
int y = 100;
int gravity = 2;
int v = -50;
int pipeX = 400;
int upperPipeHeight = 250;
int lowerPipeHeight = -250;
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
  rect(pipeX, 0, 50, upperPipeHeight);
  pipeX--;
  fill(16, 255, 13);
  rect(pipeX, 500, 50, lowerPipeHeight);
  teleportPipes();
}

void mousePressed() {
y += v;
}

void teleportPipes() {
  
  if(pipeX < 0) {
    pipeX = 400;
    upperPipeHeight = (int) random(100,400);
  }
}