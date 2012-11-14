PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6800;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

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
  canvas.strokeWeight(3);
  canvas.stroke(243, 31, 0, 200);

//tackle this later - getting random spacing between lines
 //int ranSpace = int(random(100, 500));
  
  for (int i=0; i < canvas.height; i += random(20,200-map(i, 0, canvas.height, 10,200) )) {
    int lineXEnd = int (random(3900, 4800));
    
    
    
    canvas.line(0, i, lineXEnd, i);
    
    canvas.beginShape();
    canvas.vertex(lineXEnd, i);
    for (int j=0; j < 7; j++){
      canvas.curveVertex(lineXEnd + random(400), i + random(100));
    }
    canvas.endShape();
  }
    
    
    
    


 

  // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("makerbot.png");
  //canvas.save("makerbot.tiff");
  //canvas.save("makerbot"+year()+day()+hour()+minute()+second()+".tff");
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

