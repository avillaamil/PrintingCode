/*  Assignment 2 Code: WET & SHARP


//puppies
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
  background(100);
  smooth();

  //float noiseVal;
  //float noiseScale=0.02;

  

  canvas = createGraphics(canvas_width, canvas_height, P2D);

  calculateResizeRatio();

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();
   //giant circle
  
  canvas.stroke(0,20);
  canvas.fill(0,5);
  canvas.ellipse(3500, 2550, 4500, 4500);



  // Sharp part of the canvas 


  canvas.beginShape(TRIANGLES); 

  canvas.stroke(0, 80);                     // MAIN ELLIPSE
  canvas.fill(0, 10);
  canvas.ellipse(3900, 2000, 2000, 2000);

  canvas.stroke(0, 80);                     // MAIN ELLIPSE
  canvas.noFill();
  canvas.ellipse(4500, 1800, 2000, 2000);

  canvas.beginShape();                   // INSCRIBED TRIANGLE               

  float x = cos(radians(-10)) * 1000;      // POINT 1
  float y = sin(radians(-10)) * 1000;
  canvas.noStroke();
  canvas.fill(0, 90);
  canvas.vertex(x+3900, y+2000);

  float x1 = cos(radians(160)) * 1000;   // POINT 3
  float y1 = sin(radians(160)) * 1000;  
  canvas.noStroke();                
  canvas.fill(0, 50);
  canvas.vertex(x1+3900, y1+2000);

  float x2 = cos(radians(70)) * 1000;    // POINT 2
  float y2 = sin(radians(70)) * 1000;
  canvas.noStroke();
  canvas.fill(0, 70);
  canvas.vertex(x2+3900, y2+2000);

  canvas.endShape();

  canvas.beginShape(TRIANGLES);
  canvas.strokeWeight(20);
  canvas.noStroke();

  //top side
  canvas.fill(0, 15);
  //canvas.vertex(4800, 2000);
  float xa = cos(radians(-10)) * 1000;      // POINT 1
  float ya = sin(radians(-10)) * 1000;
  canvas.vertex(xa+3900, ya+2000);
  canvas.vertex(800, 2300);
  //canvas.vertex(3000, 2500);
  float xb = cos(radians(160)) * 1000;   // POINT 3
  float yb = sin(radians(160)) * 1000;  
  canvas.vertex(xb+3900, yb+2000);

  //bottom side
  canvas.fill(0, 50);
  //canvas.vertex(3000, 2500);
  float xc = cos(radians(160)) * 1000;   // POINT 3
  float yc = sin(radians(160)) * 1000;  
  canvas.vertex(xc+3900, yc+2000);
  //canvas.vertex(3600, 2900);
  float xd = cos(radians(70)) * 1000;    // POINT 2
  float yd = sin(radians(70)) * 1000;
  canvas.vertex(xd+3900, yd+2000);
  canvas.vertex(800, 2300);

  // OTHER CIRCLES
  
  //bubble1
  canvas.fill(255);
  canvas.stroke(0);
  canvas.strokeWeight(1);
  canvas.ellipse(5200, 3000, 980, 980);
  //bubble2
  canvas.ellipse(4800, 3200, 700, 700);
  //bubble3
  canvas.noFill();
  canvas.stroke(255);
  canvas.strokeWeight(10);
  canvas.ellipse(4600, 4100, 1000,1000);


  // bottom triangle
  canvas.beginShape(TRIANGLES);
  canvas.stroke(0);
  canvas.strokeWeight(1);
  canvas.fill(0,5);
  //top side
  //canvas.fill(0, 60);
  canvas.vertex(800, 2350);
  canvas.vertex(3400, 3000);
  canvas.vertex(2300, 3000);

  // bottom side
  //canvas.fill(0, 100);
  canvas.vertex(800, 2350);
  canvas.vertex(2300, 3000);
  canvas.vertex(2900, 3700);

  // right side
  //canvas.fill(0, 5);
  canvas.vertex(3400, 3000);
  canvas.vertex(2900, 3700); // end point
  canvas.vertex(2300, 3000); // center point

  canvas.stroke(0);
  canvas.noFill();
  canvas.triangle(800, 2400,    2500, 3700,    2000, 4200);
  
 
  
  canvas.endShape();











  canvas.endDraw();

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("grab.tiff");
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

