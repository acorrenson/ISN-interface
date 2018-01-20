
class Button {
  // attributes
  int x; // pos X
  int y; // pos Y
  int w; // width
  int h; // height
  String label;
  boolean clicked;
  color strokeColor;
  color fillColor;

  // constructor
  Button(int x, int y, String label) {
    this.x = x;
    this.y = y;
    this.h = 40;
    this.w = label.length() * this.h / 2;
    this.label = label;
    this.clicked = false;
  }
  
  void changeColor() {
    
  }

  void update() {
    if ( this.x < mouseX && this.x + this.w > mouseX
      && this.y < mouseY && this.y + this.h > mouseY) {
       this.clicked = true;
       this.changeColor();
    }
  }

  void render() {
    if (!this.clicked) {
      fill(0);
      stroke(255);
      rect(this.x, this.y, this.w, this.h);
      fill(255);
      stroke(0);
      textSize(20);
      textAlign(CENTER, CENTER);
      text(this.label, this.x + this.w/2, this.y + this.h/2);
    }
  }
}