PVector temp1;
PVector temp2;
PVector temp3;

void setup(){
  size(1280, 800);
  background(255); 
  smooth();
  noFill();
  

  translate(width/2, height/2);

  int radius = 300;
  float numPoints = 100;
  float pointDegree = 300 / numPoints;
  float noiseCount = 0;
  
  ArrayList<PVector> shapePoints = new ArrayList();
  shapePoints.add( new PVector(100, 100));
  shapePoints.add( new PVector(400, 100));
  shapePoints.add( new PVector(400, 400));
  shapePoints.add( new PVector(100, 400));
 
 // Adding the PVectors in an array
  /*ArrayList<PVector> shapePoints = new ArrayList();
  for (int i=0; i<numPoints; i++) {
    float x = cos(radians(pointDegree * i)) * radius + random(50, 150);
    float y = sin(radians(pointDegree * i)) * radius + random(50, 150);
    float n = noise(noiseCount) * 20;
    PVector temp = new PVector(x+n, y+n);
    shapePoints.add(temp);
  }*/
  
  
  //TRIANGLES
  stroke(255);
  strokeWeight(1);
  fill(100, 255, 30, 10);
  for (int i = 0; i < 50; i++){
    temp1 = shapePoints.get(int(random(0, shapePoints.size())));
    temp2 = shapePoints.get(int(random(0, shapePoints.size())));
    temp3 = shapePoints.get(int(random(0, shapePoints.size())));
    triangle(temp1.x, temp1.y, temp2.x, temp2.y, temp3.x, temp3.y);
}
  
  //OUTERSHAPE
  stroke(40);
  strokeWeight(4);
  beginShape();
  for (int i = 0; i < shapePoints.size(); i++){
    PVector thisvector = shapePoints.get(i);
    vertex(thisvector.x, thisvector.y);
    noiseCount += 0.2;
  }
  endShape();
  


}
