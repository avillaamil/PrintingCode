PGraphics canvas;
int canvas_height = 6800;
int canvas_width = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

//boolean showGrid = false;

/*  SET UPS
 _________________________________________________________________ */

void setup()
{
  size(1300, 850);
  background(255);
  smooth();


  // create canvas & resize
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  // create a grid object
  ModularGrid grid = new ModularGrid(6, 4, 100, 1000);
  
 
  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);
  canvas.noStroke();
  canvas.ellipseMode(CORNER);
  canvas.rectMode(CORNER);
  
  
  // loop forever until we break out
  while(true)
  {
    // get a random collection of modules max 3x4
    Module module = grid.getRandomModule(3, 4);
    Module circleModule = grid.getRandomModule(3,4);
    
    // if there are any left, draw them
    if(module != null)
    {
      
      canvas.fill(0, 50);
      canvas.rect(module.x, module.y, module.w, module.h);
      canvas.stroke(0, 255, 255);
      canvas.strokeWeight(10);
      canvas.ellipse(circleModule.x, circleModule.y, 500, 500);
      //canvas.fill(0, 200, 55);
      //canvas.rect(module.x, module.y, 200,200);
      //canvas.ellipse(circleModule.x, circleModule.y, 400, 400);
    }
    // else break out
    else
    {
      break;
    } 
  }
  
  // function that draws the grid for us
  grid.display();
  
    canvas.endDraw();

  canvas.endDraw();

  // what is resized canvas size?
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  // draw canvas on the screen
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

    canvas.save("grid"+year()+day()+hour()+minute()+second()+".png");
    canvas.save("grid"+year()+day()+hour()+minute()+second()+".tff");

}

/*  Calculate resizing function
 _________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

