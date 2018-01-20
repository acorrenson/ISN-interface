
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
    println("test");
  }
}

void keyReleased() {
  input.update(keyCode);
}