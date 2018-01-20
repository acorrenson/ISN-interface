
class TextArea {
  
  /*
    ===============
    Object TextArea, init a new text area with a pixel position, a content value (String)
    ===============
  */
  
  int x, y, w, h, max;
  boolean active = true;
  String content = "";
  
  TextArea( int x, int y, int w, int h ) {
    // Method who init the attributs of the TextArea
  
    this.x = x; this.y = y;
    this.w = w; this.h = h;
    this.max = 12;
    
  }
  
  void render() {
  
    fill(255);
    rect(this.x, this.y, this.w, this.h, 7);
    textSize(32);
    //fill('#4138A7');
    text(this.content, x, y);
  
  }
  
  void update( String add ) {
  
    this.content += add;
  
  }
  
}