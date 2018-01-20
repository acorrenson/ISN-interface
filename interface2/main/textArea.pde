
class TextArea {

  /*
    ===============
   Object TextArea, init a new text area with a pixel position, a content value (String)
   ===============
   */

  int x, y, w, h, max;
  boolean focus = false;
  String content = "";

  TextArea( int x, int y, int w, int h) {
    // Method who init the attributs of the TextArea

    this.x = x; this.y = y;
    this.w = w;  this.h = h;
    this.max = 12;
    this.focus = false;
  }

  void render() {

    fill(255);
    if ( this.focus ) { stroke(#FF0000); }
    else { stroke(0); }
    rect(this.x, this.y, this.w, this.h + 5, 7);
    textSize(this.h);
    fill(#4138A7);
    textAlign(BASELINE);
    text(this.content, this.x + 10, this.y + this.h);
  }

  void update(int add) {
    if ( add == 8 && this.content.length() > 0 ) { this.content = this.content.substring(0, this.content.length() - 1); }
    else if ( add != 8 ) { this.content += char(add); }
  }
  
  void clear() {
    this.content = "";
  }
}