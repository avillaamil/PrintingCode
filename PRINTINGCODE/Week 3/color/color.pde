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
  colorMode(HSB, 1, 1, 1, 255);  

  ColorTheme t = new ColorTheme ("alis theme");
  
  t.addRange("INDIGO", 0.15);
  t.addRange("DARKGOLDENROD", 0.15);
  t.addRange("TOMATO", 0.05);

  
  FloatRange h = new FloatRange(0.1, 0.8);
  FloatRange s = new FloatRange(0.3, 0.8);
  FloatRange b = new FloatRange(0.3, 1);
  ColorRange range = new ColorRange(h, s, b, "alis range");
  t.addRange(range, null, 0.05);
  
  ColorList randomList = t.getColors(5);
  
  // this is where I'm messed up on the for loop
  
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  calculateResizeRatio();




  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();  
  //canvas.noStroke();

  // SHAPES STARTING

  canvas.ellipseMode(CORNER);

  canvas.fill(0, 50, 50, 200);
  canvas.ellipse(1350, 1480, 1450, 1450);      // circle 1 (top right shape)

  canvas.fill(0, 50, 50, 200);
  canvas.ellipse(1200, 1800, 1200, 1200);      // circle 2 (left shape)
  
  canvas.fill(0, 100, 100, 255);
  canvas.ellipse(2100, 2200, 200, 200);        // middle embedded circle
 
  canvas.noStroke();
  canvas.fill(2, 2, 2, 20);
  canvas.ellipse(800, 900, 3000, 3000);        // giant transparent circle

  //  int [] coords = {
  //  2200, 2200, 2500, 1900, 2800, 2200, 3400, 1700, 3800, 1800, 3900, 1760, 4000, 1750, 4020, 1740, 4100, 1770, 4350, 1610, 4100, 1440, 4000, 1280, 4200, 1220, 4500, 900, 4700, 1100, 5000, 1200, 5200, 1500, 5210, 1600, 5250, 1650, 5260, 1630, 5300, 1610, 5400, 1630, 5350, 1650, 5450, 1680, 5550, 1780, 5350, 1980, 5550, 2200, 5750, 2500, 5700, 2700, 5780, 2800, 5685, 3100, 5885, 3350, 5890, 3200, 5950, 3250, 5980, 3300, 5955, 3400, 6150, 3400, 6000, 3600, 6100, 3900
  //  };
  //  int i;
  //  for (i = 0; i < coords.length; i +=2){
  //  canvas.line(coords[i], coords[i+1], 1000,500);
  //  }

  // organic line form
  
  canvas.noFill();
  canvas.strokeWeight(1);
  canvas.stroke(0);
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
  canvas.curveVertex(5000, 1200);
  canvas.curveVertex(5200, 1500);
  canvas.curveVertex(5210, 1600);
  canvas.curveVertex(5250, 1650);
  canvas.curveVertex(5260, 1630);
  canvas.curveVertex(5300, 1610);
  canvas.curveVertex(5400, 1630);
  canvas.curveVertex(5350, 1650);
  canvas.curveVertex(5450, 1680);
  canvas.curveVertex(5550, 1780);
  canvas.curveVertex(5350, 1980);
  canvas.curveVertex(5550, 2200);
  canvas.curveVertex(5750, 2500);
  canvas.curveVertex(5700, 2700);
  canvas.curveVertex(5780, 2800);
  canvas.curveVertex(5685, 3100);
  canvas.curveVertex(5885, 3350);
  canvas.curveVertex(5890, 3200);
  canvas.curveVertex(5950, 3250);
  canvas.curveVertex(5980, 3300); 
  canvas.curveVertex(5955, 3400);
  canvas.curveVertex(6150, 3400);
  canvas.curveVertex(6000, 3600);
  canvas.curveVertex(6000, 3900);
  canvas.curveVertex(6000, 3900);
  canvas.endShape();




  canvas.fill(0, 100, 100, 255);
  canvas.ellipse(5800, 3800, 100, 100);   // bottom circle

  canvas.fill(0, 100, 100, 255);
  canvas.ellipse(5900, 3900, 200, 200);   // big bottom circle



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

