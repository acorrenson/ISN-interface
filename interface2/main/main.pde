
Button b;

void setup() {
  // some amazing code here
  size(400, 400);
  b = new Button(10, 10, "mdr"); 
}

void draw() {
  // some amazing code here
  b.update();
  b.render();
}