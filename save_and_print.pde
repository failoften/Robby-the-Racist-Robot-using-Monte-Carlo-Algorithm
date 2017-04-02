void saveAndPrint() {

  String[] robbyPage = new String[46];

  robbyPage[0] = "..................................................................................";
  robbyPage[1] = "..................................................................................";
  robbyPage[2] = "................................MMMMM...........MMMMM.............................";
  robbyPage[3] = "................................MMMMM...........MMMMM.............................";
  robbyPage[4] = "................................MMMMM...........MMMMM.............................";
  robbyPage[5] = "..........MMM ..... MMMMM ......MMMMMMMMM ......MMMMMMMMM.......MMMMM..MMMMM......";
  robbyPage[6] = ".......MMMMMM ....MMMMMMMMM.....MMMMMMMMMMMN....MMMMMMMMMMMN....MMMMM..MMMMM......";
  robbyPage[7] = "......MMMMMMM ..NMMMMMMMMMMMN...MMMMMMMMMMMMM...MMMMMMMMMMMMM...MMMMM..MMMMM......";
  robbyPage[8] = "......MMMMMM ...MMMMM...MMMMM...MMMMM...MMMMM...MMMMM...MMMMM...MMMMM..MMMMM......";
  robbyPage[9] = "......MMMMM.....MMMMM...MMMMM...MMMMM...NMMMM...MMMMM...MMMMM...MMMMM..MMMMM......";
  robbyPage[10] = "......MMMMM.....MMMMM...MMMMM...MMMMM...MMMMM ..MMMMM...MMMMM...MMMMMMMMMMMM......";
  robbyPage[11] = "..... MMMMM.....MMMMMMMMMMMMN....MMMMMMMMMMMM...NMMMMMMMMMMMM...MMMMMMMMMMMM......";
  robbyPage[12] = "......MMMMM..... NMMMMMMMMMN......MMMMMMMMMM.... NMMMMMMMMMN.....MMMMMMMMMMM......";
  robbyPage[13] = "......MMMMM........ MMMMM ......... MMMMMM ........ MMMMM .............MMMMM......";
  robbyPage[14] = ".....................................................................MMMMMM,......";
  robbyPage[15] = "................................................................. MMMMMMMM, ......";
  robbyPage[16] = "............................................................... MMMMMMM...........";
  robbyPage[17] = "..................................................................................";
  robbyPage[18] = " ";
  robbyPage[19] = " ";
  robbyPage[20] = "Based on your skin pigmentation - it has been determined";  
  robbyPage[21] = "you statistically match the following profile. Results will vary.";
  robbyPage[22] = " ";
  robbyPage[23] = " ";
  robbyPage[24] = timeDate;
  robbyPage[25] = "PROFILE............................................................................";

/*
  float gender = MonteCarlo(float(data[1]));
  String sex;

  if(gender > 0.5) {
    sex = "male";   
  }
  else {
    sex = "female";   
  }



  int myNum = int(MonteCarlo(population));
  String mobilePhone;

  if(myNum < float(data[5])) {
    mobilePhone = "true"; 
  } 
  else {
    mobilePhone = "false";
  }



  int myNetNum = int(MonteCarlo(population));
  String Internet;

  if(myNetNum < float(data[6])) {
    Internet = "true"; 
  } 
  else {
    Internet = "false";
  }


  float happyNum = MonteCarlo(1);
  String happy;

  if(happyNum > float(data[9])) {
    happy = "true"; 
  } 
  else {
    happy = "false";
  }


  float electricity = float(data[2])/float(data[10]);

  String literate;
  float literateNum = random(0,1);
  if(literateNum < float(data[3])) {
    literate = "true";
  }
  else {
    literate = "false";
  }
*/

  robbyPage[26] = stat[1] + sex;                                                    // gender
  robbyPage[27] = "Country of Origin: " + thename;                        // country
  robbyPage[28] = stat[4] + data[4] + " years";                               // life expect
  robbyPage[29] = stat[7] + data[7];                                      // income
  robbyPage[30] = stat[2] + electricity + " kilowatt hours";                  // electricity
  robbyPage[31] = stat[3] + literate;                                    // literate
  robbyPage[32] = stat[5] + mobilePhone;                                // mobile
  robbyPage[33] = stat[6] + Internet;                                    // internet

    if(data[8] != "not available") {
    robbyPage[34] = stat[8] + data[8] + "%";                                  // military expense
  }
  else {
    robbyPage[34] = stat[8] + data[8];                                  // military expense
  }

  robbyPage[35] = stat[9] + happy;                                      // happy



  robbyPage[36] = " ";
  robbyPage[37] = "..................................................................................";
  robbyPage[38] = " ";
  robbyPage[39] = "                  Thank you for using Robby the Racist Robot.";
  robbyPage[40] = "                  www.davidoverholt.com/robby-the-racist-robot";               
  robbyPage[41] = "..................................................................................";
  robbyPage[42] = " ";
  robbyPage[43] = " ";
  robbyPage[44] = "Information gathered from the USA CIA Factbook 2007, Swivel, NationMaster, WHO, UNICEF, and various other statistical data collection agencies.";
  robbyPage[45] = "Skin tone averaged using Von Luchran's chromatic scale for pigmentation. Data compiled using customized algorithm based on Monte Carlo method of randomization.";


  saveStrings("data.txt",  robbyPage);

  delay(3000);

  //  PRINT THE FILE
  String cmd3 = "lpr -r /Users/David/Documents/Processing/monte_carlo_robby/data.txt";

  Process r;
  try{
    r = Runtime.getRuntime().exec(cmd3);
  }
  catch(IOException v){ 
    v.printStackTrace();
  }

  // let it print
  delay(30000);

}
