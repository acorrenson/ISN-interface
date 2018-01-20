
Button b;
TextArea input;

void setup() {
  // some amazing code here
  size(400, 400);
  b = new Button(10, 70, "mdr"); 
  input = new TextArea(10, 10, 300, 32);
}

void draw() {
  // some amazing code here
  background(200);
  b.update();
  b.render();
  input.render();
}

void keyReleased() {

  input.update(key);

}