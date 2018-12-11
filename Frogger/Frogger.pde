int x = 200;
int y = 360;
car a = new car(100, 100, 10, 20);
car b = new car(200, 200, 15, 25);
car c = new car(300, 300, 20, 15);

void setup() {
  size(400, 400);
}


void draw() {
  background(55, 193, 55);
  fill(134, 14, 9);
  ellipse(x, y, 15, 15);
  
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
      fill(0,255,0);
      rect(CarX, CarY, size, 50);
}
}