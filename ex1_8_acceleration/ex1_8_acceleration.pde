Mover mover;

//void settings(){
//  size(800,500);  
//}
void setup(){
  size(800,500);
  background(255);
  
  // create a new object
 mover=new Mover();
  
}


void draw(){
  //background(255,220);
  mover.update();
  mover.display();
}