/*  Properties
_________________________________________________________________ */

PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 4961;

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
  
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  
  calculateResizeRatio();
  
  float middleY = canvas.height/2;
  float middle = canvas.width/2;
  
  canvas.beginDraw();
     canvas.background(0);
     canvas.noStroke();
     canvas.triangle(middle, 4500, middle-(1200), 2100, middle+(1200), 2100);
     canvas.rectMode(CENTER);
     for(int i=0; i<5; i++){
     int spacing = i*200;
     int changeWidth = i*400;
     canvas.rect(middle, 1940 - spacing, 2400 - changeWidth, 100); 
    }
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
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}








  
