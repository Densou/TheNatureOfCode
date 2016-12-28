// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover(float m, float x , float y) {
    mass = m;
    position = new PVector(x,y);
    velocity =new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void applyRepulsion(){
    float repX,repY;
    repX=(1/(position.x)-1/(width-position.x))*0.3;
    repY=(1/(position.y)-1/(height-position.y))*0.3;
    PVector rep=new PVector(repX,repY);
    acceleration.add(rep);
  };
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(0,127);
    ellipse(position.x,position.y,mass*16,mass*16);
  }

  void checkEdges() {

    if (position.x > width-mass*8) {
      position.x = width-mass*8;
      velocity.x *= -1;
    } else if (position.x < mass*8) {
      velocity.x *= -1;
      position.x = mass*8;
    }

    if (position.y > height-mass*8) {
      velocity.y *= -1;
      position.y = height-mass*8;
    }else if (position.y < mass*8) {
      velocity.y *= -1;
      position.y = mass*8;
    }

  }

}