class Ball{
  int l,h,w;
  int radius;
  PVector location,velocity;
  
  Ball(int l_,int h_,int w_,int radius_){
    l=l_;
    h=h_;
    w=w_;

    radius=radius_;
    velocity= new PVector(5,3,7);
    location=new PVector(l/2,h/2,w/2);
  }
  
  void renderBox(){
    //draw the box
    smooth();
    stroke(150,50);
    for(int i=0; i<l;i+=40){
          line(i,0,0,i,h,0);
          line(i,0,0,i,0,w);
          line(i,h,w,i,h,0);
          line(i,h,w,i,0,w);          
    }
    
    for(int j=0; j<h;j+=40){
          line(0,j,0,l,j,0);
          line(0,j,0,0,j,w);
          line(l,j,w,l,j,0);
          line(l,j,w,0,j,w);          
    }    
    
    for(int k=0; k<w;k+=40){
          line(0,0,k,l,0,k);  
          line(0,0,k,0,h,k); 
          line(l,h,k,l,0,k);  
          line(l,h,k,0,h,k);
    }     
            
  }
  
  void loadBall(){
    location.add(velocity);
    stroke(0);
    fill(100,0,0,10);
    translate(location.x,location.y,location.z);
    sphere(radius);
    
  }
  
  void calVelo(){
      
  if((location.x<radius)||(location.x>l-radius)){
    velocity.x=velocity.x*-1;
  }
  if((location.y<radius)||(location.y>h-radius)){
    velocity.y=velocity.y*-1;
  }
  if((location.z<radius)||(location.z>w-radius)){
    velocity.z=velocity.z*-1;
  }
  }
  
}