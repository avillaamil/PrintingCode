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
  ModularGrid gridOverlap = new ModularGrid(2, 1, 100, 1000);

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

  Module leftModule = gridOverlap.modules[0][0];
  Module rightModule = gridOverlap.modules[1][0];

  // ................text example......................
  //canvas.fill(0);
  //canvas.text(s, startModule.x, startModule.y, startModule.w * 2, startModule.h * 2 + grid.gutterSize);

  canvas.ellipseMode(CORNER);
  canvas.noFill();
  canvas.strokeWeight(4);
  canvas.stroke(0);

  // .......................drawing time.....................................

canvas.fill(0, 2);
canvas.noStroke();
//canvas.triangle(rightModule.x, rightModule.y, rightModule.x+1500, rightModule.y+2400, rightModule.x, rightModule.y+4800);
canvas.triangle(leftModule.x, leftModule.y+2400, rightModule.x+1500, rightModule.y+4800, leftModule.x, leftModule.y+4800);

canvas.triangle(rightModule.x+1500, rightModule.y, rightModule.x+1500, rightModule.y+2400, leftModule.x, leftModule.y);


//canvas.triangle(rightModule.x+1500, rightModule.y+2400, rightModule.x+1500, leftModule.y, leftModule.x, leftModule.y+2400);
//canvas.triangle(rightModule.x, rightModule.y+2500, rightModule.x+1500, rightModule.y+4800, leftModule.x, leftModule.y+4800);

  canvas.fill(188, 0, 57);
  canvas.noStroke();
  //canvas.rect(sevenModule.x, sevenModule.y, sevenModule.w, sevenModule.h);
  canvas.triangle(sevenModule.x, sevenModule.y, sevenModule.x+320, sevenModule.y+540, sevenModule.x+630, sevenModule.y);

  canvas.strokeWeight(4);
  canvas.stroke(0);
  canvas.noFill();
  canvas.triangle(eightModule.x, eightModule.y, eightModule.x+320, eightModule.y+540, eightModule.x+630, eightModule.y);
  canvas.triangle(eightModule.x, eightModule.y+150, eightModule.x+320, eightModule.y+540, eightModule.x+630, eightModule.y+150);

  canvas.triangle(nineModule.x+200, nineModule.y, nineModule.x+320, nineModule.y+340, nineModule.x+430, nineModule.y);
  canvas.triangle(nineModule.x+150, nineModule.y+50, nineModule.x+320, nineModule.y+440, nineModule.x+480, nineModule.y+50);
  canvas.triangle(nineModule.x, nineModule.y+550, nineModule.x+320, nineModule.y+445, nineModule.x+630, nineModule.y+550);

  //canvas.fill(0, 98, 55);
  canvas.fill(35, 95, 68);
  canvas.noStroke();
  canvas.triangle(twelveModule.x, twelveModule.y, twelveModule.x+630, twelveModule.y+550, twelveModule.x+630, twelveModule.y);
  canvas.triangle(elevenModule.x, elevenModule.y, elevenModule.x, elevenModule.y+550, elevenModule.x+630, elevenModule.y+550);
  canvas.triangle(fiveModule.x, fiveModule.y, fiveModule.x+630, fiveModule.y+550, fiveModule.x+630, fiveModule.y);


  canvas.noFill();
  canvas.strokeWeight(4);
  canvas.stroke(0);
  canvas.triangle(sixModule.x, sixModule.y, sixModule.x, sixModule.y+550, sixModule.x+630, sixModule.y+550);
  canvas.triangle(sixModule.x+200, sixModule.y+100, sixModule.x+200, sixModule.y+350, sixModule.x+500, sixModule.y+350);
  canvas.triangle(eighteenModule.x, eighteenModule.y, eighteenModule.x, eighteenModule.y+550, eighteenModule.x+630, eighteenModule.y+550);
  canvas.triangle(eighteenModule.x+300, eighteenModule.y, eighteenModule.x+630, eighteenModule.y, eighteenModule.x+630, eighteenModule.y+300);
  canvas.triangle(fourModule.x, fourModule.y+550, fourModule.x+630, fourModule.y, fourModule.x+630, fourModule.y+550);

  canvas.triangle(tenModule.x, tenModule.y, tenModule.x+320, tenModule.y+200, tenModule.x+630, tenModule.y);
  canvas.triangle(tenModule.x, tenModule.y+550, tenModule.x+320, tenModule.y+350, tenModule.x+630, tenModule.y+550);
  //canvas.line(tenModule.x+200, tenModule.y+270, tenModule.x+440, tenModule.y+270);


  canvas.triangle(oneModule.x, oneModule.y, oneModule.x+500, oneModule.y+200, oneModule.x+630, oneModule.y);
  canvas.triangle(oneModule.x, oneModule.y, oneModule.x+500, oneModule.y+200, oneModule.x+630, oneModule.y+550);

  canvas.fill(110, 131, 122);
  canvas.noStroke();
  canvas.triangle(fifteenModule.x, fifteenModule.y+550, fifteenModule.x+630, fifteenModule.y, fifteenModule.x+630, fifteenModule.y+550);
  canvas.triangle(fourteenModule.x, fourteenModule.y, fourteenModule.x+630, fourteenModule.y+550, fourteenModule.x+630, fourteenModule.y);

  canvas.noFill();
  canvas.strokeWeight(4);
  canvas.stroke(0);
  canvas.triangle(twoModule.x, twoModule.y, twoModule.x+630, twoModule.y+270, twoModule.x, twoModule.y+550);
  //canvas.triangle(twoModule.x, twoModule.y, twoModule.x, twoModule.y+550, twoModule.x+630, twoModule.y+550);

  //canvas.triangle(sixteenModule.x+630, sixteenModule.y, sixteenModule.x, sixteenModule.y+270, sixteenModule.x+630, sixteenModule.y+550);
  canvas.triangle(sixteenModule.x, sixteenModule.y, sixteenModule.x+630, sixteenModule.y, sixteenModule.x, sixteenModule.y+270);
  canvas.triangle(sixteenModule.x, sixteenModule.y+550, sixteenModule.x, sixteenModule.y+270, sixteenModule.x+630, sixteenModule.y+550);

  // FUNCTION HIDING GRID
  // ......... .......... comment this out to hide the grid!!!!!
  // FUNCTION HIDING GRID
  //grid.display();
  //gridOverlap.display();






  // ........................blabla blablablabla............................
  canvas.endDraw();

  // what is resized canvas size?
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  // draw canvas on the screen
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("gridwithoverlap3.png" );
    canvas.save("grabgrid.tiff" );

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


//  ...

