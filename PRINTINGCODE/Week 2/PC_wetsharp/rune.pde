float middle;
float middleY;

void setup() 
{ 
  size(1300, 900);
  background(30);
  middle = width/2;
  middleY = height/2;
  smooth();

  noStroke();
  triangle(middle, 780, middle-(200), 432, middle+(200), 432);
  
  // draw 5 rectangles
  
  rectMode(CENTER);
  for(int i=0; i<5; i++)
  {
    int spacing = i*40;
    int changeWidth = i*60;
    
    // this happens 5 times
   rect(middle, 400 - spacing, 398 - changeWidth, 15); 
  }

}
