void voice() {
  delay(1000);

  String sayThis = "say " + timeDate + " - Based on your skin pigmentation sample, it has been determined you statistically match the following profile. ";
  Process s;
  try{
    s = Runtime.getRuntime().exec(sayThis);
  }
  catch(IOException v){ 
    v.printStackTrace();
  }

delay(20);
  
  sayThis = stat[1] + sex + " - ";                                                    // gender
  sayThis = sayThis + "Country of Origin: " + thename + " - ";                        // country
  sayThis = sayThis + stat[4] + data[4] + " years - ";                               // life expect
  sayThis = sayThis + stat[7] + data[7] + " - ";                                      // income
  sayThis = sayThis + stat[2] + electricity + " kilowatt hours - ";                  // electricity
  sayThis = sayThis + stat[3] + literate + " - ";                                    // literate
  sayThis = sayThis + stat[5] + mobilePhone + " - ";                                // mobile
  sayThis = sayThis + stat[6] + Internet + " - ";                                    // internet
  sayThis = sayThis + stat[8] + data[8] + "% - ";                                  // military expense
  sayThis = sayThis + stat[9] + happy + " - ";                                      // happy

  Process t;
  try{
    t = Runtime.getRuntime().exec(sayThis);
  }
  catch(IOException u){ 
    u.printStackTrace();
  }


  //give it time to speak the results
  delay(10000);
  
  sayThis = sayThis + " Results will vary.  Process Complete.  Thank you for using Robby the Racist Robot.";


  String cmd2 = "say " + sayThis;
  Process o;
  try{
    o = Runtime.getRuntime().exec(cmd2);
  }
  catch(IOException v){ 
    v.printStackTrace();
  }
  
  delay(10000);
  
  

}
