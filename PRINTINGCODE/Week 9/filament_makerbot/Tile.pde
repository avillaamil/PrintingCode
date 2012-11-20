class Tile {
  int x;
  int y;
  int tileWidth;
  int tileHeight;
  //int[] colors = {#35570b, #5f9d47, #1a3405, #4b0306, #7c0b07, #d92911, #8a6606, #df9f09, #fae333, #586f7d, #b9cad4, #f0ede8};
  int[] colors = {#4b0306, #7c0b07, #d92911};
  
  Tile(int _x, int _y, int _tileWidth, int _tileHeight) {
    x = _x;
    y = _y;
    tileHeight = _tileHeight;
    tileWidth = _tileWidth;
  } 
  
  void display() {
    
    canvas.pushMatrix();
    canvas.translate(x, y);
    
    for (int i=0; i < tileHeight; i += random(20,200-map(i, 0, tileHeight, 20,200) )) {
    int lineXEnd = int (random(3300, 4500));
    
    canvas.stroke(255);
    canvas.line(100, i, lineXEnd, i);
    
    canvas.noFill();
    canvas.beginShape();
    canvas.vertex(lineXEnd, i);
    
    for (int j=0; j < 7; j++){
      canvas.curveVertex(lineXEnd + random(400), i + random(100));
    }
    canvas.endShape();
  }
    
    canvas.popMatrix();
  }
  
}
