void setup() {
  size(400,400);
  //frameRate(1000);
  colorMode(RGB);
  
  println(Serial.list());
  scanner = new Serial(this, Serial.list()[0], 9600);

  // Uses the default video input, see the reference if this causes an error
  // video = new Capture(this, 80, 60, 10);
  video = new Capture(this, 80, 60, Vid1);  
  video.settings();


  // Set up int with size of entire image and assign that many array places for RGB arrays
  int count = (video.width * video.height);
  reds = new float[count];
  greens = new float[count];
  blues = new float[count];

  try {
    for(int i = 0; i <= 9; i++) {
      workbook[i] = Workbook.getWorkbook(new File(sketchPath(i + ".xls")));
      //println("Workbook " + i);
    }
  } 
  catch(Exception e) {
    println("Error! " + e); 
  }
  
  
 try {
    workbook[10] = Workbook.getWorkbook(new File(sketchPath("population.xls")));
  }
  catch(Exception e) {
    println("Error! " + e); 
  }
  
    // tell Arduino it's okay to start scanning (restart)
    scannerReady = 1; 
    scanner.write(scannerReady);

}
