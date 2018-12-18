int x = 200;
int y = 380;
car b = new car(100, 100, 3, 30);
car d = new car(200, 200, 2, 30);
car f = new car(300, 300, 1, 30);
car a = new car(50, 50, 4, 30);
car c = new car(150, 150, 1, 30);
car e = new car(250, 250, 5, 30);

void setup() {
  size(400, 400);
}


void draw() {
  background(0, 0, 0);
  fill(134, 14, 9);
  ellipse(x, y, 15, 15);
  
  a.display();
  b.display();
  c.display();
  d.display();
  e.display();
  f.display();
  
  a.LCarMove();
  b.RCarMove();
  c.LCarMove();
  d.RCarMove();
  e.RCarMove();
  f.LCarMove();
  
  if(intersects(a) == true) {
    x = 200;
    y = 380;
  }
  
  if(intersects(b) == true) {
    x = 200;
    y = 380;
  }
  
  if(intersects(c) == true) {
    x = 200;
    y = 380;
  }
  
  if(intersects(d) == true) {
    x = 200;
    y = 380;
  }
  
  if(intersects(e) == true) {
    x = 200;
    y = 380;
  }
  
  if(intersects(f) == true) {
    x = 200;
    y = 380;
  }
  
  
  
  
}

void keyPressed()
{
      if(key == CODED){
        if(y > 0) {
            if(keyCode == UP)
            {
                  y -= 10;
            }
        }
        if(y < 400) {
             if(keyCode == DOWN)
            {
                  y += 10; 
            }
        }
        if(x < 400) {
             if(keyCode == RIGHT)
            {
                  x += 10;
            }
        }
        if(x > 0) {
             if(keyCode == LEFT)
            {
                  x -= 10;
            }
        }
      }
}
public class car {
  int CarX;
  int CarY;
  int Carspeed;
  int size;
  

public car(int CarX, int CarY, int Carspeed, int size) {
 this.CarX = CarX;
 this.CarY = CarY;
 this.Carspeed = Carspeed;
 this.size = size;
 

}

void display() 
{
      fill(random(0, 255), random(0,255),random(0, 255));
      
      rect(CarX, CarY, size, 15);
}

void LCarMove() {
  CarX = CarX - Carspeed;
  if(CarX < 0) {
    CarX = width;
    
  }
}
void RCarMove() {
  CarX = CarX + Carspeed;
  if(CarX > 400) {
    CarX = width - 400;
  }
}

int getX() {
  return CarX;
}

int getY() {
  return CarY;
}

int getSize() {
  return size;
}
}

boolean intersects(car ca) {
      if ((y > ca.getY() && y < ca.getY()+30) && (x > ca.getX() && x < ca.getX()+ca.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}