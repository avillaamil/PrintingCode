import toxi.util.datatypes.*;
import toxi.geom.*;

class Rectangle {
  
  float x1;
  float y1;
  
  float x2;
  float y2;
  
  float x3;
  float y3;
  
  float x4;
  float y4;
  

  
  Rectangle(float _x1, float _y1, float _x2, float _y2) {
    
    x1 = _x1;
    y1 = _y1;
    
    x2 = _x2;
    y2 = _y2;
    
    
      // pick a weighted random height of the rectangle
      WeightedRandomSet<Float> rectHeight = new WeightedRandomSet<Float>();

      rectHeight.add(1500., 50);
      rectHeight.add(1800., 30);      
      rectHeight.add(2000., 20);      
      rectHeight.add(-1200., 10);      
     
    
      // do the math to get the points
      
      // set the points in the variables
      
      //PVector leftTop  = new PVector(leftXT,  leftYT);    //Left Top of section

    float sometimes = random();
    
    if (sometimes < 0.2) {
      // make it lower. 
    }
    
    x3 = x1 + int(random(-550, 550));    
    y3 = y1 - rectHeight.getRandom();
    
    
    
    x4 = x2 + int(random(-550, 550)); 
    y4 = y2 - rectHeight.getRandom();
    
  
    
  }
  
  
  
  void display(Line2D leftEdge) {
//    
//    //create nested if statement for 4 conditionals: green, yellow, red, blue/gray
//    
//    //GREEN

    Vec2D lefty3 = new Vec2D(0, y3);
    Vec2D righty3 = new Vec2D(canvas.width, y3);

    Line2D horizontalLine = new Line2D(lefty3, righty3);
    
    leftEdge.scale(10);
    
    Line2D.LineIntersection intersection = horizontalLine.intersectLine(leftEdge);
    println("hi");
    x3 = intersection.getPos().x;

    canvas.fill(90, 168, 43, 50);
    canvas.triangle(x1, y1, x3, y3, x4, y4);
    canvas.fill(25, 49, 0, 50);
    canvas.triangle(x2, y2, x3, y3, x4, y4);
//  
 }
//  
}

  
