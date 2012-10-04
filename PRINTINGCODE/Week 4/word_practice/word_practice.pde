import geomerative.*;

String charToDraw = "T R A M A D O L";

RFont font;
RGroup grp;
RPoint[] pnts;

// SETUPS

void setup() {
  size(1280, 800);
  colorMode(RGB);
  smooth();

  RG.init(this);
  font = new RFont ("Code_Pro_Demo-webfont.ttf", 187, RFont.LEFT);

  RCommand.setSegmentLength(5);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  grp = font.toGroup(charToDraw);
  pnts = grp.getPoints();

  background(255);
}

// DRAWSSS

void draw() {
  smooth();

  //making it centered

  pushMatrix();
  translate((width/2)-(grp.getWidth()/2), (height/2)+(grp.getHeight()/2));

//  //YELLOW
//  for (int k=0; k<pnts.length; k++) {
//    stroke(250, 240, 0, 50);
//    line(pnts[k].x, pnts[k].y+60, pnts[k].x, pnts[k].y);
//  }

  //CYAN
  for (int j=0; j<pnts.length; j++) {
    stroke(0, 255, 240, 50);
    line(pnts[j].x, pnts[j].y, pnts[j].x+20, pnts[j].y+20);
  }

  //MAGENTA
  for (int i=0; i<pnts.length; i++) {
    stroke(255, 60, 220, 50);
    line(pnts[i].x, pnts[i].y, pnts[i].x+40, pnts[i].y);
  }
  
//  //BLACK
//  for (int t=0; t<pnts.length; t++) {
//    stroke(0);
//    line(pnts[t].x, pnts[t].y, pnts[t].x, pnts[t].y);
//  }



  //endShape();
  popMatrix();
}

