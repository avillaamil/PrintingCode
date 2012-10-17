import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

PGraphics canvas;
int canvas_height = 5100;
int canvas_width = 6800;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

int x=0;
int y=0;
int xDirection = 0;
int yDirection = 0;

/*  SET UPS
 _________________________________________________________________ */

void setup() { 
  size(1300, 850);
  background(100);
  smooth(8);

  // create canvas & resize
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  //int[] colors = {#f1c677, #c64f62, #bc202e, #8da196, #35674a, #ee2535, #42c3d6, #f34d25, #e1e52c, #c84392};

  String charToDraw = "COLONY";
  
  xDirection = int(random(-150, 250));
  yDirection = int(random(-150, 250));

  
 // ............. ~~~ CANVAS IS BEGINNING ~~~ .................
  
  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);
  
  int fontSize = 750;
  
  // TEXT STUFF
  RG.init(this);
  RFont font = new RFont ("Code_Pro_Demo-webfont.ttf", fontSize, RFont.LEFT);  

// .......................drawing time.....................................

   canvas.translate(canvas.width / 2, canvas.height / 2);
  
// TEXT
// so we're translating above here so everything is now relative to this new origin point (0,0)
  canvas.pushMatrix();
  canvas.translate(-1500, 0);
  canvas.fill(0);
  font.draw("COLONY", canvas);
  canvas.popMatrix();
  
  for (int i=0; i<5; i++);{
    float ran = random(0, 100);
    drawEllipse();
    
//    if (ran > 150){
//      drawEllipse();
//    }
//    else {
//      drawHex();
//    }
    
    x += xDirection + random(0, 150);
    y += yDirection + random(0, 150);
  }
}

  // SHAPE FUNCTIONS

void drawEllipse(){
  fill(50, 20);
  canvas.ellipse(x,y,150,150);
}

void drawHex(){
  // we're translating to x & y just as ellipse takes x & y as coordinate points
  canvas.translate(x, y);
  canvas.fill(30, 10);
  float numVertices = 6;
  float vertexDegree = 360 / numVertices;
  float shapeRadius = random(50, 100);
  
  beginShape();
  for(int i = 0; i < numVertices; i++)
  {
    float x = cos(radians(i * vertexDegree)) * shapeRadius;
    float y = sin(radians(i * vertexDegree)) * shapeRadius;
    vertex(x, y);
  }
  endShape();

    

// .......................blabla blablablabla............................
  
  canvas.endDraw();

  // what is resized canvas size?
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  // draw canvas on the screen
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

    //canvas.save("logotests.tiff" );
    //canvas.save("logotests.png" );
   // canvas.save("grid"+year()+day()+hour()+minute()+second()+".png");
  //canvas.save("grid"+year()+day()+hour()+minute()+second()+".tff");
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


