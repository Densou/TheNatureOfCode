//noiseDetail()
//void setup(){
//  size(300,200);
//  background(255,255,255);
//}
//void draw(){
//loadPixels();
//float xoff=0.0;

//for(int x=0;x<width;x++){
//  float yoff=0.0;
  
//  for(int y=0;y<height;y++){
//    float bright=map(noise(xoff,yoff),0,1,0,255);
//    pixels[x+y*width]=color(bright);
//    yoff+=0.01;
//  }
//  xoff+=0.01;
//}
////for(int x=0;x<width;x++){
////  for(int y=0;y<height;y++){
////    float bright=random(255);
////    pixels[x+y*width]=color(bright);
////  }
////}
//updatePixels();


//}
  
float r,g,b;
float noiseScale=0.02;
float offset;

void draw() {
  offset=1000+mouseX;
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      noiseDetail(4,0.25);
      r=noise(x*noiseScale,y*noiseScale);
      g=noise((x+offset)*noiseScale,(y+offset)*noiseScale);
     
      stroke(r * 200,g*200,b*200);
      point(x , y);
    }
  }
}