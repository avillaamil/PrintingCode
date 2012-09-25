/*  Assignment 3 Code: COLOR & PERSONALITY
 
 _________________________________________________________________ */


import toxi.color.*;
import toxi.color.theory.*;	
import toxi.util.datatypes.*;


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
  colorMode(HSB, 360, 100, 100, 255);  

  // My color list
  //  ColorList colors = new ColorList();
  //  
  //  colors.add( NamedColor.BLUE );
  //  colors.add( NamedColor.BLANCHEDALMOND );
  //  colors.add( NamedColor.CORAL );
  //  colors.add( NamedColor.PLUM );
  //  colors.add( NamedColor.LIME );
  //  colors.add( NamedColor.PERU );

  canvas = createGraphics(canvas_width, canvas_height, P2D);

  calculateResizeRatio();

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();  
  //canvas.noStroke();

  // SHAPES STARTING

  canvas.ellipseMode(CORNER);

  canvas.fill(0, 50, 50, 200);
  canvas.ellipse(1350, 1480, 1250, 1250);      // circle 1 (high)

  canvas.fill(0, 50, 50, 200);
  canvas.ellipse(1200, 1800, 1200, 1200);      // circle 2




  canvas.noFill();
  canvas.strokeWeight(2);
  canvas.beginShape();
  canvas.curveVertex(2200, 2200);
  canvas.curveVertex(2200, 2200);
  canvas.curveVertex(2500, 1900);
  canvas.curveVertex(2800, 2200);
  canvas.curveVertex(3400, 1700);
  canvas.curveVertex(3800, 1800);
  canvas.curveVertex(3900, 1760);
  canvas.curveVertex(4000, 1750);
  canvas.curveVertex(4020, 1740);
  canvas.curveVertex(4100, 1770);
  canvas.curveVertex(4350, 1610);
  canvas.curveVertex(4100, 1440);
  canvas.curveVertex(4000, 1280);
  canvas.curveVertex(4200, 1220);
  canvas.curveVertex(4500, 900);
  canvas.curveVertex(4700, 1100);
  canvas.curveVertex(5000, 1400);
  canvas.curveVertex(5200, 1500);
  canvas.curveVertex(5210, 1600);
  canvas.curveVertex(5250, 1650);
  canvas.curveVertex(5260, 1630);
  canvas.curveVertex(5300, 1610);
  canvas.curveVertex(5300, 1610);


  canvas.endShape();


  canvas.fill(0, 100, 100, 255);
  canvas.ellipse(2100, 2200, 200, 200);    // middle circle




  canvas.endDraw();

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("grabcolor.png");
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

