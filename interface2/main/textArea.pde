
class TextArea {
  
  /*
    ===============
    Object TextArea, init a new text area with a pixel position, a content value (String)
    ===============
  */
  
  int x, y, w, h, max;
  boolean active = true;
  String content = "";
  
  TextArea( int x, int y, int w, int h) {
    // Method who init the attributs of the TextArea
  
    this.x = x; this.y = y;
    this.w = w; this.h = h;
    this.max = 12;
    
  }
  
  void render() {
  
    fill(255);
    rect(this.x, this.y, this.w, this.h + 5, 7);
    textSize(this.h);
    fill(#4138A7);
    textAlign(BASELINE);
    text(this.content, this.x + 10, this.y + this.h);
  }
  
  void update( String add ) {
  
    this.content += add;
  
  }
  
}