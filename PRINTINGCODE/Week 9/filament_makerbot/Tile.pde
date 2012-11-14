class Tile {
  int x;
  int y;
  int tileWidth;
  int tileHeight;
  int[] colors = {#cd2620, #02aa93, #cc2068, #fc6a14};
  
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
    int lineXEnd = int (random(3900, 4800));
    
    canvas.stroke(colors[i]);
    canvas.line(0, i, lineXEnd, i);
    
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
