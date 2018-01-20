
class Button {
  // attributes
  int x; // pos X
  int y; // pos Y
  int w; // width
  int h; // height
  String label; // text to display
  boolean clicked; // state (graphical only)
  boolean used; // state (test this one to fire events)
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
    this.strokeColor = color(255);
    this.fillColor = color(0);
    this.used = false;
  }
  
  // change color according to the state "clicked" or "not"
  void changeColor() {
    if (this.clicked) {
      this.fillColor = color(150);
    } else {
      this.fillColor = color(0);
    }
  }
  
  // test collision with pointer
  boolean collide () {
    if (this.x < mouseX && this.x + this.w > mouseX
      && this.y < mouseY && this.y + this.h > mouseY) {
        return true;
    } else {
      return false;
    }
  }

  void update() {
    // reset button before to check
    if (this.used == true) this.used = false;
    
    if ( this.collide() && mousePressed && !this.clicked) {
      // on click -> set clicked (graphical)
      this.clicked = true;
      
    } else if ( this.collide() && !mousePressed && this.clicked && !this.used) {
      // on mouseReleased if not already used -> activate here
      this.used = true;
      this.clicked = false;
      
    } else if (!this.collide() && !mousePressed && this.clicked && !this.used) {
      // on mouseReleased if pointer does'nt collide -> cancel the click and do nothing
      this.clicked = false;
    }
  
    //reset the color
    this.changeColor();
  }
  
  // draw the button
  void render() {
    fill(this.fillColor);
    stroke(255);
    rect(this.x, this.y, this.w, this.h, 7);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text(this.label, this.x + this.w/2, this.y + this.h/2);
  }
}