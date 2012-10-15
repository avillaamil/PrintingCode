import geomerative.*;

PGraphics canvas;
int canvas_height = 5100;
int canvas_width = 6800;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

/*  SET UPS
 _________________________________________________________________ */

void setup() { 
  size(1300, 850);
  background(100);
  smooth();

  // create canvas & resize
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  int[] colors = {#f1c677, #c64f62, #bc202e, #8da196, #35674a, #ee2535, #42c3d6, #f34d25, #e1e52c, #c84392};
  //float logoSize = 500;
  //int largeFlare = 300;
  //String charToDraw = "COLONY";
  

  
 // ............. ~~~ CANVAS IS BEGINNING ~~~ .................
  
  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);
  
  //int fontSize = 500;
  
  // TEXT STUFF
  int fontX = canvas.width/2;
  int fontY = canvas.height / 2;
  int fontHeight = 600;
  PFont code = createFont("Code-Pro-Demo", fontHeight);
  textFont(code);
  String sentence = "COLONY";
  float fontWidth = textWidth(sentence);

  //initializing library
//  RG.init(this);
//  RFont font = new RFont ("Code_Pro_Demo-webfont.ttf", 500, RFont.LEFT);
//  RCommand.setSegmentLength(1);
//  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
//
//  RGroup grp;
//  grp = font.toGroup(charToDraw);
//  RPoint[] pnts = grp.getPoints();
  

// .......................drawing time.....................................

  // make logo appear in the middle of the screen
  //canvas.translate((canvas.width / 2) - (logoSize / 2), (canvas.height / 2) - (logoSize / 2));
  
   
  // draw outline of logo to help
  canvas.stroke(150);
  canvas.noFill();
  //canvas.rect(0, 0, logoSize, logoSize);
  
  // text 
  //canvas.translate(300, 300);
  //font.draw("Hello World!");
  
  canvas.translate(fontX, fontY);
  canvas.fill(30);
  canvas.text(sentence, 0,0);
  
  

// .......................blabla blablablabla............................
  
  canvas.endDraw();

  // what is resized canvas size?
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  // draw canvas on the screen
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

    canvas.save("logotests.tiff" );
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


