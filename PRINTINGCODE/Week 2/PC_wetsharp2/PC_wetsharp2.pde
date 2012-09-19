/*  Assignment 2 Code: WET & SHARP
 _________________________________________________________________ */

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
  background(255);
  smooth();

  //float noiseVal;
  //float noiseScale=0.02;



  canvas = createGraphics(canvas_width, canvas_height, P2D);

  calculateResizeRatio();

  canvas.beginDraw();
  canvas.background(0, 98);
  
  

  // Sharp part of the canvas 
  
  //inner triangle
  canvas.beginShape(TRIANGLES); 
  canvas.strokeWeight(20);
  canvas.noStroke();
  //right side
  canvas.fill(255,50);
  canvas.vertex(4800, 2000);
  canvas.vertex(3000, 2500);
  canvas.vertex(3600, 2900);  
  //top side
  canvas.fill(255,97);
  canvas.vertex(4800, 2000);
  canvas.vertex(800, 2300);
  canvas.vertex(3000, 2500);
  //bottom side
  canvas.fill(0,100);
  canvas.vertex(3000, 2500);
  canvas.vertex(3600, 2900);
  canvas.vertex(800, 2300);

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

