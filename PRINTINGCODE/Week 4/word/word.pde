import geomerative.*;

String charToDraw = "E";

RFont font;
RGroup grp;
RPoint[] pnts;

PGraphics canvas;
int canvas_width = 7000;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


/*  Setup
 _________________________________________________________________ */

void setup()
{ 
  size(1300, 850);
  background(100);
  smooth();
  
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  RG.init(this);
  font = new RFont("BEBAS.ttf", 600, RFont.LEFT);

  RCommand.setSegmentLength(25);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  grp = font.toGroup(charToDraw);
  pnts = grp.getPoints();



  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();  
  
  for (int i = 0; i < pnts.length; i++ ) {
    ellipse(pnts[i].x, pnts[i].y, 200, 200);
  }
  
   canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("grabcolor11.png");
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

