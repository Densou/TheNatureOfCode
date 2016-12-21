Car car1;
Tree tree1;
PVector location1;

void setup()
{
  size(220,400);
  smooth();
  location1=new PVector(100,100);
  car1=new Car(location1);
  tree1=new Tree();
}

void draw(){
  background(255);
  car1.update();
  car1.check();
  car1.render();
  tree1.render();
  translate(10,100);
  tree1.render();  
  translate(width/2,-60);
  tree1.render();
  translate(0,140);
  tree1.render();  
}