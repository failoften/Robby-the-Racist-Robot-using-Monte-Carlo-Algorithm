void scan() {

  String remainStill = "say Please keep your hand still while your profile is compiled.";

  Process startScan;

  try{
    startScan = Runtime.getRuntime().exec(remainStill);
  }
  catch(IOException problem1){ 
    problem1.printStackTrace();
  }


  delay(1000);

  for(int q = 0; q <= 35; q++) {
    if (video.available()) {
      video.read();

      // Delay so it doesn't crash
      delay(10);

      // For every pixel in the video
      for (int i = 0; i < (video.width * video.height); i ++) {

        // Pull the RGB nums from the current pixel 
        try {
          reds[i] = red(video.pixels[i]);
          greens[i] = green(video.pixels[i]);
          blues[i] = blue(video.pixels[i]);
        } 
        catch(Exception e) {
          println("Error! " + e); 
        }
      }

      delay(10);

      // Reset
      theRed = 0;
      theBlue = 0;
      theGreen = 0;

      // For every item in array add to the RGB vars
      for(int i = 0; i < reds.length; i++) {
        theRed = theRed + reds[i];      
        theGreen = theGreen + greens[i];
        theBlue = theBlue + blues[i];
      }

      // Set up count again because it erased somehow...?
      int count = (video.width * video.height);

      // Divide by the number of pixels in video to find the average
      theRed = theRed / count;
      theGreen = theGreen / count;
      theBlue = theBlue / count;

      int theRedInt = int(theRed) * 255/200;
      int theGreenInt = int(theGreen) * 255/173;
      int theBlueInt = int(theBlue)* 255/75;

      background(theRedInt, theGreenInt, theBlueInt);    

      // Print line the current average RGB
      println(" ");
      println(theRedInt + "        " + theGreenInt + "        " + theBlueInt);


      int r1 = 105;	    
      int g1 = 95;	
      int b1 = 200;

      int r2 = 85;	    
      int g2 = 75;     
      int b2 = 165;

      int r3 = 60;     
      int g3 = 50;	
      int b3 = 130;

      int r4 = 40;     
      int g4 = 40;	
      int b4 = 90;

      int r5 = 30;     
      int g5 = 30;	
      int b5 = 70;

      int r6 = 20;     
      int g6 = 20;	
      int b6 = 40;

      int r7 = 12;     
      int g7 = 12;	
      int b7 = 18;

      int r8 = 0;      
      int g8 = 0;	
      int b8 = 0;


      int val1 = (r1-theRedInt)*(r1-theRedInt) + (g1-theGreenInt)*(g1-theGreenInt) + (b1-theBlueInt)*(b1-theBlueInt);
      int val2 = (r2-theRedInt)*(r2-theRedInt) + (g2-theGreenInt)*(g2-theGreenInt) + (b2-theBlueInt)*(b2-theBlueInt);
      int val3 = (r3-theRedInt)*(r3-theRedInt) + (g3-theGreenInt)*(g3-theGreenInt) + (b3-theBlueInt)*(b3-theBlueInt);
      int val4 = (r4-theRedInt)*(r4-theRedInt) + (g4-theGreenInt)*(g4-theGreenInt) + (b4-theBlueInt)*(b4-theBlueInt);
      int val5 = (r5-theRedInt)*(r5-theRedInt) + (g5-theGreenInt)*(g5-theGreenInt) + (b5-theBlueInt)*(b5-theBlueInt);
      int val6 = (r6-theRedInt)*(r6-theRedInt) + (g6-theGreenInt)*(g6-theGreenInt) + (b6-theBlueInt)*(b6-theBlueInt);
      int val7 = (r7-theRedInt)*(r7-theRedInt) + (g7-theGreenInt)*(g7-theGreenInt) + (b7-theBlueInt)*(b7-theBlueInt);
      int val8 = (r8-theRedInt)*(r8-theRedInt) + (g8-theGreenInt)*(g8-theGreenInt) + (b8-theBlueInt)*(b8-theBlueInt);


      // Set pigment to closest
      int[] list = { 
        val1, val2, val3, val4, val5, val6, val7, val8                               };
      int pigment = min(list);  

      if(pigment == val1) {
        pigmentNum = 2;
      } 
      else if(pigment == val2) {
        pigmentNum = 3;
      } 
      else if(pigment == val3) {
        pigmentNum = 4;
      } 
      else if(pigment == val4) {
        pigmentNum = 5;
      } 
      else if(pigment == val5) {
        pigmentNum = 6;
      } 
      else if(pigment == val6) {
        pigmentNum = 7;
      } 
      else if(pigment == val7) {
        pigmentNum = 8;
      } 
      else if(pigment == val8) {
        pigmentNum = 9;
      }

      println(" ");
      println("Pigment Number: " + pigmentNum);

    }

    delay(20);
  }

  delay(3000);

  // if we got a good pigment sample
  if(pigmentNum < 9) {

    String scanComplete = "say Scan complete. Please remove hand. Now loading profile information. ";

    Process stopScan;

    try{
      stopScan = Runtime.getRuntime().exec(scanComplete);
    }
    catch(IOException problem1){ 
      problem1.printStackTrace();
    }
    goAhead = true; 

    // tell Arduino no more scanning for now
    scannerReady = 0; 
    scanner.write(scannerReady);

    delay(3000);
  }

  // if it gets a total black reading, it messed up
  else if(pigmentNum == 9) {

    String tryAgain = "say Scan failed.  Please try again. ";
    Process scanAgain;
    try{
      scanAgain = Runtime.getRuntime().exec(tryAgain);
    }
    catch(IOException problem1){ 
      problem1.printStackTrace();
    }

    goAhead = false; 

    // wait half a sec
    delay(500);
    
    // tell Arduino no more scanning for now
    scannerReady = 1; 
    scanner.write(scannerReady);

  }  

  scanning = false;
}
