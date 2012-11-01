PGraphics canvas;
int canvas_width = 6800;
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


//ArrayList<NoisePoints> points = new ArrayList();

ArrayList<PVector> noisePoints =  new ArrayList();
/*  Setup
 _________________________________________________________________ */

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

// ~~~~~~~~~~~~~~~~~~ drawing time ~~~~~~~~~~~~~~~~~~~~

//BASELINE

  canvas.noFill();
  canvas.strokeWeight(3);
  canvas.stroke(30);
  
  //for (int j=0; j < 10; j++) {
    canvas.translate(-1000,3000);

    float noiseCount = 0;
    
    for(int i=0; i < canvas.width+5000; i +=2000) {
      noisePoints.add(new PVector(i, noise(noiseCount)*100));
    }
    println(noisePoints.size());
    canvas.beginShape();
    for(int i=0; i < noisePoints.size(); i++){
      
      // this is making the Y coordinate of the vertex random
      noiseSeed(round(random(100)));
     //noiseSeed(20);
     float ranY = noise(noiseCount)*random(100.0,1000.0);
      println("i am ranY:"+ranY);
      // this is what draws the line
      //canvas.vertex(noisePoints.get(i).x, (noisePoints.get(i).y));
      canvas.vertex(noisePoints.get(i).x + ranY, (noisePoints.get(i).y + ranY ));
    }
    canvas.endShape();
    
    
    
//    noiseSeed(round(random(100)));
//    canvas.stroke(30);
//  
//    for (int i=0; i < canvas.width+ 100; i +=200){
//      float ranY = noise(noiseCount);
//      canvas.vertex(i, ranY*550);
//      hexagons.get(i);  
//
//  
//      noiseCount += 0.2;
//    }
//  canvas.endShape();
  




// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("olivetti.png");
  //canvas.save("olivetti.tiff");
  //canvas.save("olivetti"+year()+day()+hour()+minute()+second()+".tff");
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


