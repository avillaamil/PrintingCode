PGraphics canvas;
int canvas_width = 6800;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

/*  Setup
 _________________________________________________________________ */

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
  canvas.strokeWeight(2);





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


