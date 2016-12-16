Car car1;
PVector location1;

void setup()
{
  size(300,400);
  smooth();
  location1=new PVector(100,100);
  car1=new Car(location1);
}

void draw(){
  background(255);
  car1.update();
  car1.check();
  car1.render();
}