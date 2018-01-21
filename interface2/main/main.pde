
String [] firstNames = {"Alice", "Bob", "Etienne", "Hector", "Hugo", "Alice", "Lea", "Lea", "Nathan", "Paul", "Pierre", "Zoe"} ;
String [] secondNames = {"Birelot", "Brajal", "Dumoulin", "Dupond", "Dupont", "Durand", "Durand", "Trucmije", "Luce", "Martin", "Petiot", "Torcq"} ;
String [] phones = {"0606060601", "060606062", "0606060603", "0606060604", "0606060605", "0606060606", "0606060607", "0606060608", "0606060609", "0606060610", "0606060611", "0606060612" } ;
int [] banKeycode = { 9, 13, 16, 17, 27, 20 };

Button search;
TextArea input;

void setup() {
  // some amazing code here
  size(400, 400);
  search = new Button(10, 70, "valider");
  input = new TextArea(10, 10, 300, 32);
  
  if ( firstNames.length != secondNames.length ) {
  
    println("Incorrect inputs");
  }
  
}

void draw() {
  background(200);

  search.update();
  search.render();
  input.update();
  input.render();

  if (search.used) {
    research(input.content);
    input.clear();
  }
}


void keyReleased() {
  input.type();
}