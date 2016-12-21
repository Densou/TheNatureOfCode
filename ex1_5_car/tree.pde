class Tree{
  float branchW,branchH;
  
  Tree(){
    branchW=5;
    branchH=15;
  }
  
  void render(){
    
  
    noStroke();
    fill(160,100,50);
    rect(40,90,10,30);
    fill(30,200,30);
    arc(45,75,60,60, PI/2+QUARTER_PI/8,QUARTER_PI/8+2.5*PI,CHORD);
    
  }
  
}