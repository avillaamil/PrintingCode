import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 6800;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup()
{
  size(1300, 850);
  background(255);
  smooth(8);

  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();

  /*  Draw __________________________________________________________*/

  canvas.beginDraw();
  canvas.background(#deceb7);
  canvas.smooth(8);
  canvas.strokeWeight(7);
  
  int fontSize = 150; 
  int fontSize2 = 150;
  RG.init(this);
  //RFont font = new RFont ("Code_Pro_Demo-webfont.ttf", fontSize, RFont.CENTER);  
  RFont font = new RFont ("DESIB___.TTF", fontSize, RFont.CENTER); 
  RFont font2 = new RFont ("OldSansBlack.ttf", fontSize2, RFont.CENTER);  


 int x = 0;
    for(int y = 0; y < canvas.height; y += 1800)
    {
      Tile t = new Tile(x, y, canvas.width, 1800);
      t.display();
    }

  // MAKERBOT
//  canvas.pushMatrix();
//  canvas.translate(5000, 6100);
//  canvas.rotate(radians(-90));
//  canvas.fill(255);
//  font.draw("Makerbot", canvas);
//  canvas.popMatrix();
  
  // FILAMENT
  canvas.pushMatrix();
  canvas.translate(5000, 6300);
  canvas.rotate(radians(-90));
  canvas.fill(255);
  font.draw("1 kg Filament", canvas);
  canvas.popMatrix();

  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  //canvas.save("filament.png");
  //canvas.save("filament.tiff");
  canvas.save("filament"+year()+day()+hour()+minute()+second()+".tff");
}



void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

