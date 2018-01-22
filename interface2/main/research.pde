
/* Function which search for a firstName, a secondName or a phone number in tree array for each one */

void research(String inputContent) {

  String [] values = split(inputContent, ' ');
  int countFirst = 0, countSecond = 0;
  
  if ( values.length > 1 ) {
  
    for (int i = 0; i < firstNames.length; i ++ ) {
    
      if ( firstNames[i].equals(values[0]) ) {
        countFirst ++;
      }
      if ( secondNames[i].equals(values[1]) ) {
        countSecond ++;
      }
    }
    
    println("The first name (" + values[0] + ") have been found: " + countFirst + " times, second name (" + values[1] + ") have been found: " + countSecond + " times.");
  
  } else if ( values.length == 1 ) {
    
    
    for (int i = 0; i < firstNames.length; i ++ ) {
    
      if ( firstNames[i].equals(values[0]) ) {
        countFirst ++;
      }
      if ( secondNames[i].equals(values[0]) ) {
        countSecond ++;
      }
    }
    
    if ( countFirst > 0 ) { println(values[0] + " is a first name, found " + countFirst + " times."); }
    if ( countSecond > 0 ) { println(values[0] + " is a second name, found " + countSecond + " times."); }
    
  }

}