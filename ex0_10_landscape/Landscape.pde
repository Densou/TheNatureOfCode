class Landscape{
  
  int scl;  //size of each cell
  int w,h;  //width and height of landscale reigon
  int rows, cols;  //num of rows and cols
  float zoff=0.0;  //perlin noise argument
  float[][] z;     //im an array to store the height values
  
  //give parameters you want for a land here
  Landscape(int scl_, int w_, int h_){
    scl=scl_;
    w=w_;
    h=h_;
    cols=h/scl;
    rows=w/scl;
    z=new float[cols][rows];    
  }
  
  void calculate(){
    float xoff=0;  //noise argument
    for(int i=0; i<cols ; i++){
      float yoff=0.0;
      for (int j=0; j<rows ;j++){
        z[i][j]=map( noise(xoff,yoff,zoff),0,1,-120,120);
        yoff+=0.1;
      }
      xoff+=0.1;
    }
    zoff+=0.01;    
  }
  
  // render landscape as grid of quads
  void render(){
    //draw ecah gird cell
    for (int x=0; x<z.length-1; x++){
      for (int y=0; y<z[x].length-1;y++){
        stroke(0);
        fill(100,100);
        pushMatrix();
        beginShape();
        translate(x*scl-w/2,y*scl-h/2,0);
        vertex(0,0,z[x][y]);
        vertex(scl,0,z[x+1][y]);
        vertex(scl,scl,z[x+1][y+1]);
        vertex(0,scl,z[x][y+1]);
        endShape(CLOSE);
        popMatrix();
      }
    }
    
  }
  
}