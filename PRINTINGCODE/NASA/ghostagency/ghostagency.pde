// built with processing 0.67/0.68
// by Alessandro Capozzo - GHOSTAGENCY - 
// winter 03-04

float noiseScale= 0.012;
float noiseCount = 1;
int myLimit;

void setup() {
  size(600, 200);
  frameRate(30);
  myLimit = width+180;
}

void draw() {
  background(255);
  noiseCount += 1;
  
  for (float i=0; i< myLimit; i++) {
    float noiseVal = noise((noiseCount+i)*noiseScale, .3*noiseScale);
    
    int c=color(noiseVal*255, noiseVal*230, noiseVal*210, 20);
    stroke(c);
    
   // stroke(0);
   
    beginShape();
    vertex(i, height*noiseVal);
    bezierVertex(.8*i+noiseVal, 200+noiseVal*1.2, noiseVal*1.02, noiseVal*1.03, noiseVal*1.3, noiseVal*1.4 );
    bezierVertex(.6*i-noiseVal, 200+noiseVal*1.2, noiseVal*1.02, noiseVal*1.03, noiseVal*1.3, noiseVal*1.4);
    vertex(i, height*noiseVal);
    endShape();
    
//    int d = color(noiseVal*220, noiseVal*230, noiseVal*210, 20);
//    stroke(d);
//    
//    beginShape(LINE);
//    vertex(i, height*noiseVal);
//    bezierVertex(.8f*i-noiseVal, noiseVal*1.2f);
//    bezierVertex(.9f*i+noiseVal, noiseVal*1.4f);
//    vertex(i, height*noiseVal);
//    endShape();
  }
}
