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
  //canvas.fill(0, 2);
  canvas.fill(255);
  canvas.stroke(0);  
  canvas.vertex(2300, 1295); // (tip)
  canvas.vertex(1250, 3625);
  canvas.vertex(2300, 3450); // (center)

  // right triangle
  //canvas.fill(0, 15);
  canvas.fill(255);
  canvas.stroke(0);  
  canvas.vertex(2300, 1295); // (tip)
  canvas.vertex(2300, 3450); // (center)
  canvas.vertex(3350, 3625); // (corner)


  // bottom triangle
  //canvas.fill(0, 35);
  canvas.fill(255);
  canvas.stroke(0);  
  canvas.vertex(1250, 3625); // (L corner)
  canvas.vertex(2300, 3450); // (center)
  canvas.vertex(3350, 3625); // (corner)
  canvas.endShape();

  
  
  // Bubble shape

  canvas.beginShape(TRIANGLES); 
  canvas.fill(255);
  canvas.ellipseMode(CENTER);
  canvas.ellipse(3950, 1995, 1600, 1600);
  float x = cos(radians(101)) * 800;
  float y = sin(radians(101)) * 800;
  
  //canvas.strokeWeight(15);
  //canvas.fill(255,0,0);
  canvas.stroke(255);
  canvas.vertex(x+3950, y+1995);
  
 
  //canvas.strokeWeight(4);
  //canvas.fill(255,50);
  canvas.stroke(0);
  canvas.ellipse(4700, 2750, 1800, 1800);
  float x1 = cos(radians(-88)) * 900;
  float y1 = sin(radians(-88)) * 900;
  
  //canvas.strokeWeight(15);
  //canvas.fill(255,0,0);
  canvas.stroke(255);
  canvas.vertex(x1+4700, y1+2750);
  
  canvas.vertex(3850, 1895);
  
  canvas.stroke(0);
  canvas.arc(5000,3000,500,500,0,PI/2); // bottom right arc
  canvas.arc(3800,1900,800,800, PI, TWO_PI-PI/2);
  canvas.endShape();

  //canvas.pushMatrix();
  //canvas.translate(3650, 1295);
  //canvas.rotate(radians(40));
  //canvas.ellipse(0, 0, 1300, 1500);
  //canvas.popMatrix();

  //canvas.pushMatrix();
  //canvas.translate(4000, 1900);
  //canvas.rotate(radians(40));
  //canvas.ellipse(0, 0, 1600, 1800);
  //canvas.popMatrix();

  // CIRCLE CENTERS
  //canvas.strokeWeight(15);
  //canvas.point(3950, 1995);
  //canvas.point(4700, 2750);
  
 


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

