import toxi.util.datatypes.*;

// ------------- sketch variables
PFont titleFont;
PFont blurbFont;
PVector temp1;
PVector temp2;
PVector temp3;

int radius = 300;
float numPoints = 100;
float pointDegree = 360 / numPoints;
float noiseCount = 0;

// ------------- canvas variables
PGraphics canvas;
int canvas_width = 2480;
int canvas_height = 3508;
float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup(){ 
  size(canvas_width/4, canvas_height/4);
  background(30);
  smooth(8);

  // ------------- construct/resize canvas
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  Blurbs b = new Blurbs();
  Planet p = new Planet();
  Title t = new Title();
//  titleFont = loadFont("Kulturista-Italic-96.vlw"); 
  titleFont = loadFont("AuCaslonSwash-96.vlw");
  blurbFont = loadFont("Helvetica-96.vlw");

  // --------------------------------------- CANVAS
  canvas.beginDraw();
  canvas.smooth(8);
  canvas.background(30);
  
  canvas.translate(canvas.width/2, canvas.height/2); 
  p.drawPlanet();
  
  // ------------- title
  canvas.fill(255);
  canvas.textFont(titleFont, 96);
  canvas.translate(0, 0);
  t.displayTitle();
  
  // ------------- blurbs
  canvas.fill(255);
  canvas.textFont(blurbFont, 24);
  b.displayBlurbs();

  canvas.endDraw();
  // --------------------------------------- CANVAS  

  // resize the offline canvas according to the resize ratio
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  // draw the offline canvas on the screen canvas
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("sketch.png");
}

// ------------- resize the offline canvas to be viewable on the screen canvas
void calculateResizeRatio(){
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

