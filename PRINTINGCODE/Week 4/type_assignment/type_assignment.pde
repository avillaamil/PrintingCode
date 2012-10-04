import geomerative.*;

PGraphics canvas;
int canvas_width = 6800;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


/*  Setupsss
 _________________________________________________________________ */

void setup() { 
  size(1300, 850);
  background(100);
  smooth();

  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();


  String charToDraw = "T R A M A D O L  ";


/*  Draw __________________________________________________________*/


  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();
  int fontSize = 950;

  //initializing library
  RG.init(this);
  RFont font = new RFont ("Code_Pro_Demo-webfont.ttf", 900, RFont.LEFT);
  RCommand.setSegmentLength(21);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  RGroup grp;
  grp = font.toGroup(charToDraw);
  RPoint[] pnts = grp.getPoints();

  //making it centered (focusing on the magenta)
  // compensating for color shifts
  
  canvas.translate(((canvas.width/2)-(grp.getWidth()/2)-180), ((canvas.height/2)+(grp.getHeight()/2)-900));
  
  //YELLOW
  for (int k=0; k<pnts.length; k++) {
    canvas.strokeWeight(4);
    canvas.stroke(250, 240, 0, 30);
    canvas.line(pnts[k].x, pnts[k].y, pnts[k].x-300, pnts[k].y-150);
  }
    
  //CYAN
  for (int j=0; j<pnts.length; j++) {
    canvas.strokeWeight(4);
    canvas.stroke(0, 255, 240, 50);
    canvas.line(pnts[j].x, pnts[j].y, pnts[j].x+300, pnts[j].y+150);
  }

  //MAGENTA
  for (int i=0; i<pnts.length; i++) {
    canvas.strokeWeight(4);
    canvas.stroke(255, 60, 220, 50);
    canvas.line(pnts[i].x, pnts[i].y, pnts[i].x+400, pnts[i].y);
  }
  

  //  //BLACK
  //  for (int t=0; t<pnts.length; t++) {
  //    canvas.stroke(0);
  //    canvas.line(pnts[t].x, pnts[t].y, pnts[t].x, pnts[t].y);
  //  }

  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("type.png");
  canvas.save("type.tiff");
}

/*  Calculate resizing
 _________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}


