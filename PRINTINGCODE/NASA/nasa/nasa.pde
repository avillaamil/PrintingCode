PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6800;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


/*  Setup  _________________________________________________________________ */

void setup() { 
  size(1300, 850);
  background(100);
  smooth();

  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();

  /*  Draw __________________________________________________________*/

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();

  canvas.noFill();
  canvas.strokeWeight(3);
  canvas.stroke(0);
  canvas.beginShape();
  canvas.curveVertex(2200, 2200);
  canvas.curveVertex(2200, 2200);
  canvas.curveVertex(1900, 2500);
  canvas.curveVertex(2200, 2800);
  canvas.curveVertex(1700, 3400);
  canvas.curveVertex(1800, 3800);
  canvas.curveVertex(1760, 3900);
  canvas.curveVertex(1750, 4000);
  canvas.curveVertex(1740, 4020);
  canvas.curveVertex(1770, 4100);
  canvas.curveVertex(1610, 4350);
  canvas.curveVertex(1440, 4100);
  canvas.curveVertex(1280, 4000);
  canvas.curveVertex(1220, 4200);
  canvas.curveVertex(900, 4500);
  canvas.curveVertex(1100, 4700);
  canvas.curveVertex(1200, 5000);
  canvas.curveVertex(1500, 5200);
  canvas.curveVertex(1600, 5210);
  canvas.curveVertex(1650, 5250);
  canvas.curveVertex(1630, 5260);
  canvas.curveVertex(1610, 5300);
  canvas.curveVertex(1630, 5400);
  canvas.curveVertex(1650, 5350);
  canvas.curveVertex(1680, 5450);
  canvas.curveVertex(1780, 5550);
  canvas.curveVertex(1980, 5350);
  canvas.curveVertex(2200, 5550);
  canvas.curveVertex(2500, 5750);
  canvas.curveVertex(2700, 5700);
  canvas.curveVertex(2800, 5780);
  canvas.curveVertex(3100, 5685);
  canvas.curveVertex(3350, 5885);
  canvas.curveVertex(3200, 5890);
  canvas.curveVertex(3250, 5950);
  canvas.curveVertex(3300, 5980); 
  canvas.curveVertex(3400, 5955);
  canvas.curveVertex(3400, 6150);
  canvas.curveVertex(3600, 6000);
  canvas.curveVertex(3900, 6000);
  //overloop
  canvas.curveVertex(4980, 5350);
  canvas.curveVertex(4650, 5250);
  canvas.curveVertex(4100, 4700);
  canvas.curveVertex(4700, 3400);
  canvas.curveVertex(2200, 2200);
  canvas.curveVertex(2200, 2200);

  canvas.endShape();









  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  //canvas.save("olivetti.png");
  //canvas.save("olivetti.tiff");
  //canvas.save("olivetti"+year()+day()+hour()+minute()+second()+".tff");
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
