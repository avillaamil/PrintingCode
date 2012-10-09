PGraphics canvas;
int canvas_height = 6800;
int canvas_width = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

//boolean showGrid = false;

/*  SET UPS
 _________________________________________________________________ */

void setup() { 
  size(1300, 850);
  background(100);
  smooth();

  // create canvas & resize
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();

  // create a grid object as a container for our grid variables
  ModularGrid grid = new ModularGrid(3, 6, 100, 1500);

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);


  //String s = "This is Grid";

  // RANDOM SECTION
  Module randomModule = grid.modules[int (random(0, 3))][int (random(0, 5))];

  //................HARD CODED SECTION
  // COLUMN ONE
  Module oneModule = grid.modules[0][0];
  Module twoModule = grid.modules[0][1];
  Module threeModule = grid.modules[0][2];
  Module fourModule = grid.modules[0][3];
  Module fiveModule = grid.modules[0][4];
  Module sixModule = grid.modules[0][5];  
  //COLUMN TWO
  Module sevenModule = grid.modules[1][0];
  Module eightModule = grid.modules[1][1];
  Module nineModule = grid.modules[1][2];
  Module tenModule = grid.modules[1][3];
  Module elevenModule = grid.modules[1][4];
  Module twelveModule = grid.modules[1][5];
  //COLUMN THREE
  Module thirteenModule = grid.modules[2][0];
  Module fourteenModule = grid.modules[2][1];
  Module fifteenModule = grid.modules[2][2];
  Module sixteenModule = grid.modules[2][3];
  Module seventeenModule = grid.modules[2][4];
  Module eighteenModule = grid.modules[2][5];


  // ................text example......................
  //canvas.fill(0);
  //canvas.text(s, startModule.x, startModule.y, startModule.w * 2, startModule.h * 2 + grid.gutterSize);

  canvas.ellipseMode(CORNER);
  canvas.noFill();
  canvas.strokeWeight(4);
  canvas.stroke(0);

  // .......................drawing time.....................................

  canvas.ellipse(randomModule.x, randomModule.y, 200, 200);

  canvas.ellipse(oneModule.x, oneModule.y, 100, 100);
  
  canvas.fill(0);
  canvas.rect(sixteenModule.x, eightModule.y, eightModule.w, eightModule.h);






  // FUNCTION HIDING GRID
  // ......... .......... comment this out to hide the grid!!!!!
  // FUNCTION HIDING GRID
  grid.display();






  // ........................blabla blablablabla............................
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


//        8==D ~~~

