
PGraphics canvas;
int canvas_width = 6800;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


//ArrayList<NoisePoints> points = new ArrayList();

ArrayList<PVector> noisePoints =  new ArrayList();
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
  canvas.smooth(8);

  // ~~~~~~~~~~~~~~~~~~ drawing time ~~~~~~~~~~~~~~~~~~~~


  //BASELINE

  canvas.noFill();
  canvas.strokeWeight(3);
  canvas.stroke(30);
  canvas.ellipseMode(CENTER);


  canvas.translate(-1000, 3000);
  float noiseCount = 0;

  // SAVING the points for the line

  for (int i=0; i < canvas.width+5000; i +=900) {   // this determines how jagged the line gets
    noisePoints.add(new PVector(i, noise(noiseCount)*random(100.0, 1000.0)));
  }
  //println(noisePoints.size());

  // DRAWING THE LINE

  canvas.beginShape();
  for (int i=0; i < noisePoints.size(); i++) {
    noiseSeed(round(random(100)));
    canvas.vertex(noisePoints.get(i).x, (noisePoints.get(i).y));
  }
  canvas.endShape();



  // dpopMatrix(); draw the rectangles here

    // do this 5 times in a loop
  for (int i = 0; i < 10; i++)
  {
    int ranNum = int(random(0, noisePoints.size() - 1));
    PVector pointOne = noisePoints.get(ranNum);
    PVector pointTwo = noisePoints.get(ranNum + 1);

    canvas.noStroke();
    canvas.fill(0, 255, 0, 30);
    canvas.ellipse(pointOne.x, pointOne.y, 900, 900);

    // create a rectangle object from these two points
    // call display on the rectangle object
  }









  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("olivetti.png");
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

