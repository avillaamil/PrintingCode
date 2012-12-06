PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6800;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

PVector temp1;
PVector temp2;
PVector temp3;


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

  ArrayList<PVector> shapePoints = new ArrayList();
  
  
  float collins = 0;
  canvas.fill(collins);
  
  shapePoints.add(new PVector(2200, 2200));
  shapePoints.add(new PVector(2200, 2200));
  shapePoints.add(new PVector(1900, 2500));
  shapePoints.add(new PVector(2200, 2800));
  shapePoints.add(new PVector(1700, 3400));
  shapePoints.add(new PVector(1800, 3800));
  shapePoints.add(new PVector(1760, 3900));
  shapePoints.add(new PVector(1750, 4000));
  shapePoints.add(new PVector(1740, 4020));
  shapePoints.add(new PVector(1770, 4100));
  shapePoints.add(new PVector(1610, 4350));
  shapePoints.add(new PVector(1440, 4100));
  shapePoints.add(new PVector(1280, 4000));
  shapePoints.add(new PVector(1220, 4200));
  shapePoints.add(new PVector(900, 4500));
  shapePoints.add(new PVector(1100, 4700));
  shapePoints.add(new PVector(1200, 5000));
  shapePoints.add(new PVector(1500, 5200));
  shapePoints.add(new PVector(1600, 5210));
  shapePoints.add(new PVector(1650, 5250));
  shapePoints.add(new PVector(1630, 5260));
  shapePoints.add(new PVector(1610, 5300));
  shapePoints.add(new PVector(1630, 5400));
  shapePoints.add(new PVector(1680, 5450));
  shapePoints.add(new PVector(1780, 5550));
  shapePoints.add(new PVector(1980, 5350));
  shapePoints.add(new PVector(2200, 5550));
  shapePoints.add(new PVector(2500, 5750));
  shapePoints.add(new PVector(2700, 5700));
  shapePoints.add(new PVector(2800, 5780));
  shapePoints.add(new PVector(3100, 5685));
  shapePoints.add(new PVector(3350, 5885));
  shapePoints.add(new PVector(3200, 5890));
  shapePoints.add(new PVector(3250, 5950));
  shapePoints.add(new PVector(3300, 5980)); 
  shapePoints.add(new PVector(3400, 5955));
  shapePoints.add(new PVector(3400, 6150));
  shapePoints.add(new PVector(3600, 6000));
  shapePoints.add(new PVector(3900, 6000));
  //overloop
  shapePoints.add(new PVector(4980, 5350));
  shapePoints.add(new PVector(4650, 5250));
  shapePoints.add(new PVector(4100, 4700));
  shapePoints.add(new PVector(4700, 3400));
  shapePoints.add(new PVector(3500, 3200));
  shapePoints.add(new PVector(3000, 3000));
  shapePoints.add(new PVector(3100, 2600));
  shapePoints.add(new PVector(2300, 2000));
  shapePoints.add(new PVector(2200, 2200));
  shapePoints.add(new PVector(2200, 2200));

  //OUTERSHAPE
  canvas.stroke(100);
  canvas.noFill();
  canvas.strokeWeight(8);
  canvas.beginShape();
  for (int i=0; i < shapePoints.size(); i++) {
    canvas.curveVertex(shapePoints.get(i).x, shapePoints.get(i).y);
  }
  canvas.endShape();
  
  //TRIANGLES
  canvas.beginShape();
  //canvas.stroke(255);
  //canvas.strokeWeight(6);
  canvas.noStroke();
  canvas.fill(100, 255, 30, 10);
  for (int i=0; i < shapePoints.size(); i++) {
    temp1 = shapePoints.get(int(random(0, shapePoints.size())));
    temp2 = shapePoints.get(int(random(0, shapePoints.size())));
    temp3 = shapePoints.get(int(random(0, shapePoints.size())));
    canvas.triangle(temp1.x, temp1.y, temp2.x, temp2.y, temp3.x, temp3.y);
      //canvas.triangle(shapePoints.get(i).x, shapePoints.get(i).y, shapePoints.get(i).x, shapePoints.get(i).y, shapePoints.get(i).x, shapePoints.get(i).y);
  }
  canvas.endShape();


 
 




  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("nasa.png");
  //canvas.save("nasa.tiff");
  //canvas.save("nasa"+year()+day()+hour()+minute()+second()+".tff");
}


/*  Calculate resizing
 _________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                           ratio = ratioHeight;
}


// 8===D ~~~~~~~

