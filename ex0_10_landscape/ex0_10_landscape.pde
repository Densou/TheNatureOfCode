float offset=100;
float scale=30;
float multi=50;
float theta=0.0;

void setup(){
  size(800,200,P3D);
  background(255);
  smooth();
  fill(100);
}

void draw(){
  background(255);
  pushMatrix();
  translate(0,0,-160);
  rotateX(PI/3);
  rotateZ(theta);
  for(int x=200;x<600;x+=20){
    for(int z=0;z<100;z+=20){
      beginShape();
      println("draw");
      vertex(x,noise(x*multi,z*multi)*scale+offset,z);
      vertex(x,noise(x*multi,z*multi+multi*20)*scale+offset,z+20);
      vertex(x+20,noise(x*multi+multi*20,z*multi+multi*20)*scale+offset,z+20);
      vertex(x+20,noise(x*multi+multi*20,z*multi)*scale+offset,z);      
      endShape(CLOSE);
    }
  }
  
  popMatrix();
  
  theta+=0.0025;
}