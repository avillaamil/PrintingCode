import geomerative.*;

String charToDraw = "T R A M A D O L";

RFont font;
RGroup grp;
RPoint[] pnts;

// SETUPS

void setup(){
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  smooth();
  
  RG.init(this);
  font = new RFont ("Code_Pro_Demo-webfont.ttf", 187, RFont.LEFT);
  
  RCommand.setSegmentLength(5);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  
  grp = font.toGroup(charToDraw);
  pnts = grp.getPoints();
  
  background(360);
}

// DRAWSSS

void draw(){
  smooth();
  
  //making it centered
  
  pushMatrix();
  translate((width/2)-(grp.getWidth()/2), (height/2)+(grp.getHeight()/2));
  
  
  
  for (int j=0; j<pnts.length; j++) {
    stroke(150, 150, 150, 50);
    line(pnts[j].x, pnts[j].y, pnts[j].x+15, pnts[j].y+15);
  }
  
  for (int i=0; i<pnts.length; i++) {
    stroke(0, 50);
    line(pnts[i].x, pnts[i].y, pnts[i].x+40, pnts[i].y);
    }
    
//    for (int k=0; k<pnts.length; k++) {
//    stroke(0, 50);
//    noFill();
//    ellipse(200, pnts[k].y+200, 20, 20);
//    }
  
  //endShape();
  popMatrix();
}
