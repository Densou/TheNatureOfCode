class Mover {

  // The Mover tracks position, velocity, and acceleration 
  PVector position;
  PVector velocity;
  PVector acceleration;
  // The Mover's maximum speed
  //float topspeed;

  Mover() {
    // Start in the center
    position = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    //topspeed = 5;
  }

  void update() {
    
    
    // Compute a vector that points from position to mouse
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir=PVector.sub(mouse,position);
    float distance=0.0;
    distance=PVector.dist(mouse,position);
    println(distance);
    dir.normalize();
    float f=0.005*(distance);
    
    dir.mult(f);
    acceleration=dir;
    
    
    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    //velocity.limit(topspeed);
    // position changes by velocity
    position.add(velocity);
  }

  void display() {
    noStroke();
    strokeWeight(2);
    float r,g,b,radius;
    r=map(noise( 100,1000,frameCount),0,1,50,255);
    g=map(noise( frameCount/20),0,1,50,255);
    b=map(noise(1000+ frameCount),0,1,50,255);
    fill(r,g,b,100);
    radius=map(noise( frameCount),0,1,0,50);
    ellipse(position.x,position.y,radius,radius);
  }

}