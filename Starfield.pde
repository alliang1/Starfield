Particle[] bob = new Particle[100];

//Particle bob = new Particle();
void setup()
{
  size(500, 500);
  //bob = new Particle();
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Particle();
    bob[0] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  //bob.show();
  //bob.move();
  
    for (int i = 0; i < bob.length; i++) {
      bob[i].show();
      bob[i].move();
      
    }
  
}



class Particle
{
  int myColor;
  double myX, myY, mySpeed, myAngle;
  Particle() {
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myX = 250;
    myY = 250;
    myColor = (int)(Math.random()*256);
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }

  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 3, 3);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myX = 250;
    myY = 250;
    myColor = 255;
  }
  
  void move(){
    
  }
  
  void show(){
    fill(myColor);
    ellipse((int)myX,(int)myY,10,10);
  }
} 
