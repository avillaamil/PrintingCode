// use kulturista italic or au caslon swatch
class Title{  
  String title = "SEDIMENT:MARS";
  
  void displayTitle(){
    canvas.beginDraw();
    canvas.text(title, canvas_width/20, canvas_height/3);
    canvas.endDraw();
    println(textWidth(title));
  }


}
