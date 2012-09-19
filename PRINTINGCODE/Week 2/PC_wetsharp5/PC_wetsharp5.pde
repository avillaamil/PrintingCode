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
  background(100);
  smooth();

  //float noiseVal;
  //float noiseScale=0.02;



  canvas = createGraphics(canvas_width, canvas_height, P2D);

  calculateResizeRatio();

  canvas.beginDraw();
  canvas.background(255);

  canvas.beginShape(TRIANGLES);

  canvas.strokeWeight(4);
  canvas.stroke(0);  

  //left triangle
  canvas.fill(0, 7);
  canvas.stroke(0);  

  canvas.vertex(2300, 1295); // (tip)
  canvas.vertex(1250, 3625);
  canvas.vertex(2300, 3450); // (center)

  // right triangle
  canvas.fill(0, 15);
  canvas.stroke(0);  

  canvas.vertex(2300, 1295); // (tip)
  canvas.vertex(2300, 3450); // (center)
  canvas.vertex(3350, 3625); // (corner)


  // bottom triangle
  canvas.fill(0, 35);
  canvas.stroke(0);  

  canvas.vertex(1250, 3625); // (L corner)
  canvas.vertex(2300, 3450); // (center)
  canvas.vertex(3350, 3625); // (corner)
  canvas.endShape();

  // Bubble shape

    canvas.fill(255);
  canvas.ellipseMode(CORNER);

  //canvas.pushMatrix();
  canvas.rotate(radians(40));
  canvas.ellipse(0, 0, 1300, 1500);
  canvas.translate(3650, 1295);
  //canvas.popMatrix();

  //canvas.pushMatrix();
  canvas.translate(4000, 1900);
  canvas.rotate(radians(40));
  canvas.ellipse(0, 0, 1600, 1800);
  //canvas.popMatrix();




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

