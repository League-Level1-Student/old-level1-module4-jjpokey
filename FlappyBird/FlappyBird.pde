int x = 100;
int y = 100;
int gravity = 2;
int v = 50;
int pipeX = 400;
int upperPipeHeight = 200;
int lowerPipeHeight = -170;
int birdX = x + 10;
int score = 0;

int pipeWidth = 50;
int pipeGap = 500 - (-lowerPipeHeight + upperPipeHeight);
int lowerY = upperPipeHeight + pipeGap;
int lowerPipeTop = 250;

void setup() {
  size(500, 500);
}



void draw() {
  background(88, 1, 131);
  stroke(0, 0, 0);
  fill(16, 255, 13);
  ellipse(x, y, 20, 20);
  y += gravity;

  fill(16, 255, 13);
  rect(pipeX, 0, 50, 150);
  pipeX--;
  fill(16, 255, 13);
  rect(pipeX, 270, 50, 170);
  teleportPipes();
  
 rect(0, 0, 500, 1);
}

void mousePressed() {
  y -= v;

}

void teleportPipes() {

  if (pipeX < 0) {
    pipeX = 400;
  
if (intersectsPipes() == true) {
    print("Game Over ");
    exit();
  }
  else {
    score += 1;
    print("score: " + score + " ");
  }
  }

    // pipeGap = 500 - (-lowerPipeHeight + upperPipeHeight);
    //lowerPipeTop = upperPipeHeight + pipeGap;

    // print( " pipe gap is " + pipeGap);
    //  print(" low is " + lowerPipeHeight);
    // print(" up is " + upperPipeHeight);
  
}

boolean intersectsPipes() { 
  
  if (y < 0) {
    return true;
  }
  if (y < 150 ) {
    return true;
  } else if (y > 270 ) {
    return true;
  } else { 
    return false;
  }
}