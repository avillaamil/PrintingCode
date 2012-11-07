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
      WeightedRandomSet<float> rectHeight = new WeightedRandomSet<float>();

      rectHeight.add(1500);
      rectHeight.add(1800);      
      rectHeight.add(2000);      
      rectHeight.add(2200);      
     
    
      // do the math to get the points
      
      // set the points in the variables
    
    /*
    
    x3 = x1 + int(random(-50, 50));    
    y3 = y1 - 500;
    
    x4 = x2 + int(random(-50, 50)); 
    y4 = _y4;
    
  */
    
  }
  
  
  
//  void display() {
//    
//    //create nested if statement for 4 conditionals: green, yellow, red, blue/gray
//    
//    //GREEN
//    fill(90, 168, 43, 50);
//    triangle(x1, y1, x3, y3, x4, y4);
//    fill(25, 49, 0, 50);
//    triangle(x2, y2, x3, y3, x4, y4);
//  
//  }
//  
}

  
