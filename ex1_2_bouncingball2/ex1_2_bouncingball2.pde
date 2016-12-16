Ball ball;

void setup(){
  background(255);
  size(400,400,P3D);
  
  ball=new Ball(150,200,300,20);
}

void draw(){
  background(120,100,160);
  pushMatrix();
  translate(width/2-100,height/2-100,-200);
  rotateX(-PI/6);
  rotateY(PI/3); 
  ball.renderBox();
  ball.loadBall();
  popMatrix();
  
  ball.calVelo();

}