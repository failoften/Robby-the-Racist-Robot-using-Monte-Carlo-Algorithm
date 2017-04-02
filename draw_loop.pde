void draw() {
  // if we're just starting, do stuff
  if(scanning) {
    
    scan();
    
    if(goAhead) {
      country();
      loadProfile();
      voice();
      saveAndPrint();
      
      // tell Arduino no more scanning for now
      //scannerReady = 1; 
      //scanner.write(scannerReady);
      
      scanning = false;
    }

    else if(!goAhead) {
      scanning = false;
    }
  
  } 
  
  // if we've already loaded everything: save, speak, print, and stop looping
  else if(!scanning){
    delay(200);
  }
}
