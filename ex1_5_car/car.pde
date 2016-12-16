class Car {
  float w,l;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Car(PVector location_){
    w=20;
    l=65;
    topspeed=10;
    acceleration=new PVector(0,0.01);
    velocity=new PVector(0,0);
    location=location_;
  }
  
  void update(){
    //velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
  
  void check(){
    if(keyPressed== true)
    {
      if(keyCode==UP)
      {
        velocity.add(acceleration);
      }
      else if(keyCode==DOWN){
        velocity=(0,0);
      }
      //acceleration.mult(-1);
    }
  }
  
  void render(){
    fill(255,233,10);
    rect(location.x,location.y,w,l);
  }
}