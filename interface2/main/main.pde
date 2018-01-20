
Button search;
TextArea input;

void setup() {
  // some amazing code here
  size(400, 400);
  search = new Button(10, 70, "valider");
  input = new TextArea(10, 10, 300, 32);
}

void draw() {
  background(200);

  search.update();
  search.render();
  input.render();

  if (search.used) {
    println(input.content);
    
  }
}

void keyReleased() {

  if ( input.focus ) {
    input.update(keyCode);
  }
}

void mouseReleased() {

  if ( checkCollide( input.x, input.y, input.w, input.h, mouseX, mouseY, 5, 5) ) {
    input.focus = true;
  } else {
    input.focus = false;
  }
}

boolean checkCollide(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2) {

  if ( x1 + w1 < x2 || x1 > x2 + w2 || y1 + h1 < y2 || y1 > y2 + h2) {
    return false; // No collide
  } else {
    return true; // Colide
  }
}