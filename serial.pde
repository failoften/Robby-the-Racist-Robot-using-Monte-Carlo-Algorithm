
//bring the serial information into your application

void serialEvent(Serial scanner) {

  int fromScanner = scanner.read();

  if(fromScanner == 1 && !scanning) {
      scanning = true;
      println("Scanning");
  }
  
}
