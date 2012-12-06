ArrayList<PVector> shapePoints = new ArrayList();

class Planet {

  void drawPlanet() {
    // ------------- add PVector points to the arrayList   
    for (int i = 0; i < numPoints; i++) {
      float x = cos(radians(pointDegree * i)) * radius;
      float y = sin(radians(pointDegree * i)) * radius;
      float n = noise(noiseCount) * 20;
      PVector temp = new PVector(x + n, y + n);
      shapePoints.add(temp);
    }

    canvas.beginShape();
    
    // ------------- outer circle  
    canvas.stroke(255);
    canvas.strokeWeight(3);
    for (int i = 0; i < numPoints; i++) {
      PVector thisvector = shapePoints.get(i);
      canvas.vertex(thisvector.x, thisvector.y);
      noiseCount += 0.2;
    }

    // ------------- transparent triangles
    canvas.noStroke();
    canvas.fill(255, 6);
    for (int i = 0; i < 200; i++) {
      temp1 = shapePoints.get(int(random(0, shapePoints.size())));
      temp2 = shapePoints.get(int(random(0, shapePoints.size())));
      temp3 = shapePoints.get(int(random(0, shapePoints.size())));
      canvas.triangle(temp1.x, temp1.y, temp2.x, temp2.y, temp3.x, temp3.y);
    }

    canvas.endShape();
  }
}

