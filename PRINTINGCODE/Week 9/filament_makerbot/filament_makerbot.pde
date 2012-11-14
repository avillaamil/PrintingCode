PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6800;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup()
{
  size(1300, 850);
  background(100);
  smooth();

  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();

  /*  Draw __________________________________________________________*/

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);
  canvas.strokeWeight(30);
  

  
//  for(int x = 0; x < canvas.width; x += 300)
//  {
  int x = 0;
    for(int y = 0; y < canvas.height; y += 1800)
    {
      Tile t = new Tile(x, y, canvas.width, 1800);
      t.display();
    }
//  }

  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("filament.png");
  //canvas.save("filament.tiff");
  //canvas.save("filament"+year()+day()+hour()+minute()+second()+".tff");
}



void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

