float offset=0;  // height offset
float amplitude=30;  // height of land
float multi=50;   //noise scale location
float theta=0.0;  //make it circle
float scale=20; //size of each cell

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
  for(int x=200;x<600;x+=scale){
    for(int y=0;y<300;y+=scale){
      fill(122,0,0);
      beginShape();
      //println("draw");
      vertex(x,y,noise(x*multi,y*multi)* amplitude+offset);
      vertex(x,y+20,noise(x*multi,y*multi+multi*20)* amplitude+offset);
      vertex(x+20,y+20,noise(x*multi+multi*20,y*multi+multi*20)* amplitude+offset);
      vertex(x+20,y,noise(x*multi+multi*20,y*multi)* amplitude+offset);      
      endShape(CLOSE);
    }
  }
  
  popMatrix();
  
  theta+=0.0025;
}