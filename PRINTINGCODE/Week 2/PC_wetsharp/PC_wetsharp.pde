/*  Assignment 2 Code: WET & SHARP
 _________________________________________________________________ */

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 7000;

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

  //float noiseVal;
  //float noiseScale=0.02;



  canvas = createGraphics(canvas_width, canvas_height, P2D);

  calculateResizeRatio();

  canvas.beginDraw();
  canvas.background(255);

  //canvas.noiseDetail(8, 0.65);
  //canvas.noiseVal = noise(random);
  //canvas.stroke(noiseVal * 255);

  // "RIGHT Sharp" is drawn here:    

  canvas.beginShape(TRIANGLES);
  canvas.strokeWeight(15);
  canvas.stroke(255);
  // top triangle
  canvas.fill(0, 10);              // <-- using transparencies to create illusion of depth
  canvas.vertex(4200, 3300);
  canvas.vertex(4700, 5000);
  canvas.vertex(4000, 4900);
  // right side
  canvas.fill(0, 30);
  canvas.vertex(4700, 5000);
  canvas.vertex(2000, 6600);
  canvas.vertex(4000, 4900);
  // left side
  canvas.fill(0, 50);
  canvas.vertex(4200, 3300);
  canvas.vertex(4000, 4900);
  canvas.vertex(2000, 6600);
  canvas.endShape();

  // "LEFT Sharp" is drawn over here:

  canvas.beginShape(TRIANGLES);
  canvas.strokeWeight(15);
  stroke(255);
  //top triangle
  canvas.fill(0, 10);
  canvas.vertex(300, 4200);
  canvas.vertex(1100, 2800);
  canvas.vertex(800, 4500);
  //right side
  canvas.fill(0, 50);
  canvas.vertex(1100, 2800);
  canvas.vertex(800, 4500);
  canvas.vertex(1400, 6000);
  //left side
  canvas.fill(0, 30);
  canvas.vertex(300, 4200);
  canvas.vertex(800, 4500);
  canvas.vertex(1400, 6000);
  canvas.endShape();

  // "MIDDLE Sharp" is drawn right here:

  canvas.beginShape(TRIANGLES);
  canvas.strokeWeight(15);
  canvas.stroke(255);
  //top triangle
  canvas.fill(0, 10);
  canvas.vertex(1200, 2000);
  canvas.vertex(2500, 3900);
  canvas.vertex(2000, 4600);
  //right side
  canvas.fill(0, 30);
  canvas.vertex(1600, 6200);
  canvas.vertex(2500, 3900);
  canvas.vertex(2000, 4600);
  //  //left side
  canvas.fill(0, 50);
  canvas.vertex(1200, 2000);
  canvas.vertex(1600, 6200);
  canvas.vertex(2000, 4600);
  canvas.endShape();

  canvas.beginShape();
  canvas.noFill();
  canvas.stroke(0);
  canvas.vertex(4000, 300);
  canvas.bezierVertex(4500, 400, 5000, 300, 3000, 1600);
  //canvas.bezierVertex(50, 80, 60, 25, 30, 20);
  canvas.endShape();

  canvas.endDraw();

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("grab.png");
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

