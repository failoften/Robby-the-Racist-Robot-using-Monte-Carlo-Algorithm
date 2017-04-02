void loadProfile() {
  delay(20);

  for(int i = 1; i<= 9; i++) {
    try {
      sheet[i] = workbook[i].getSheet(0);  
      stats[i] = sheet[i].getCell(2,1);                // What is the stat we're looking at?
      stat[i]  = stats[i].getContents();
    } 
    catch(Exception problem2){
      print("Problem with: " + problem2); 
    }
  }

  delay(20);

  for(int i = 1; i<= 9; i++) {

    try {
      cellSheet[i] = sheet[i].findLabelCell(thename);
      cellSheetRow[i] = cellSheet[i].getRow();

      delay(20);

      datas[i] = sheet[i].getCell(2, cellSheetRow[i]);                // Get the data
      data[i] = datas[i].getContents(); 

    } 

    catch(Exception l) {
      println(stat[i] + ": ");
      println("Problem: " + l + " in workbook " + i); 
      println(" "); 

      data[i] = "not available";

    }
  }



  delay(20);

  // PROFILE

  gender = MonteCarlo(float(data[1]));
  if(gender > 0.5) {
    sex = "male";   
  }
  else {
    sex = "female";   
  }


  myNum = int(MonteCarlo(population));
  if(myNum < float(data[5])) {
    mobilePhone = "true"; 
  } 
  else {
    mobilePhone = "false";
  }


  myNetNum = int(MonteCarlo(population));
  if(myNetNum < float(data[6])) {
    Internet = "true"; 
  } 
  else {
    Internet = "false";
  }


  happyNum = MonteCarlo(1);
  if(happyNum > float(data[9])) {
    happy = "true"; 
  } 
  else {
    happy = "false";
  }


  electricity = float(data[2])/float(data[10]);

  literateNum = random(0,1);
  if(literateNum <= float(data[3])) {
    literate = "true";
  }
  else {
    literate = "false";
  }
}
