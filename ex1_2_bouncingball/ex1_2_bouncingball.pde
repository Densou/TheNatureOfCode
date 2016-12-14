PVector location;
PVector velocity;
PVector min,max;
float radius=20;


void setup(){
  size(600,600,P3D);
  smooth();
  min=new PVector(50,50,0);
  max=new PVector(300,300,100);
  location=new PVector(100,150,50);
  velocity=new PVector(5,8,10);
}


void draw(){
  background(255);
  
  location.add(velocity);
  
  if((location.x<min.x+radius)||(location.x>max.x+radius)){
    velocity.x=velocity.x*-1;
  }
  if((location.y<min.y+radius)||(location.y>max.y+radius)){
    velocity.y=velocity.y*-1;
  }
  if((location.z<min.z+radius)||(location.z>max.z+radius)){
    velocity.z=velocity.z*-1;
  }
  
  stroke(0);
  fill(100,0,0,50);
  
  rotate(PI/3);
  beginShape();
  vertex(min.x,min.y,min.z);
  vertex(max.x,min.y,min.z);  
  vertex(max.x,max.y,min.z); 
  vertex(min.x,max.y,min.z);  
  endShape(CLOSE); 
  
  beginShape();
  vertex(min.x,min.y,max.z);
  vertex(max.x,min.y,max.z);  
  vertex(max.x,max.y,max.z); 
  vertex(min.x,max.y,max.z);  
  endShape(CLOSE); 
  rotate(-PI/3);
  
  translate(location.x,location.y,location.z);
    rotateX(PI/3);
  fill(175);
  sphere(radius);

  println("location:"+location.x,location.y,location.z);
  println("velocity:"+velocity.x+velocity.y,velocity.z);
}