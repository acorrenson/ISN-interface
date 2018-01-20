
Button search;
TextArea input;

void setup() {
  // some amazing code here
  size(400, 400);
  search = new Button(10, 70, "valider");
  input = new TextArea(10, 10, 300, 32);
}

void draw() {
  // some amazing code here
  background(200);
  search.update();
  search.render();
  input.render();
}

void keyReleased() {
  input.update(key);
}