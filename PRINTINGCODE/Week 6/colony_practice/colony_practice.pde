int x = 0;
int y = 0;
int xDirection = 0;
int yDirection = 0;

void setup()
{
   background(255);
  size(1500, 900);
  translate(width/2, height/2);
  
  xDirection = int(random(-50, 50));
  yDirection = int(random(-50, 50));
  
  for(int i = 0; i < 5; i++)
  {
    float ran = random(0, 100);
    //drawEllipse();
    if(ran > 50)
    {
      drawEllipse();
    }
    else
    {
      drawRect();
    }
  
    x += xDirection + random(0, 50);
    y += yDirection + random(0, 50);  
  }
}

void drawEllipse()
{
  noStroke();
  fill(50, 10);
  ellipse(x, y, 150, 150);
}

void drawRect()
{
  translate(x, y);
  noStroke();
  fill(30, 10);
  int numVertices = int (random(5, 6));
  float vertexDegree = 360 / numVertices;
  float shapeRadius = random(100, 200);
  
  beginShape();
  for(int i = 0; i < numVertices; i++)
  {
    float x = cos(radians(i * vertexDegree)) * shapeRadius;
    float y = sin(radians(i * vertexDegree)) * shapeRadius;
    vertex(x, y);
  }
  endShape();
  
}
