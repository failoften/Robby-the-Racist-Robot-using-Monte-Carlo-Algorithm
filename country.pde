void country() {

  // PICK A COUNTRY
  // this part is the least statistically accurate (don't know how many people of a pigmentation are in each country) 
  // possible fix: base on population
  // use this number to pick the row from the country list spreadsheet - cells 3 thru 10
  // column, row (starts at 0)              // pigmentNum, countryRow


  delay(20);
  validCountry = false;

  while(!validCountry) {

    // Pick a random number between 0 and X
    int countryRow = int(MonteCarlo(260));
    // println(countryRow);


    try {
      sheet[0] = workbook[0].getSheet(0);  
    } 
    catch(Exception problem2){
      print("Problem with: " + problem2); 
    }

    delay(20);

    // go to the 
    try {
      datas[0] = sheet[0].getCell(1, countryRow);                                  // Get the name of the country
      ranks[0] = sheet[0].getCell(pigmentNum, countryRow);                         // Get the 0 or 1 from the cell

      rank[0] = ranks[0].getContents();
      data[0] = datas[0].getContents(); 

      // println("Country: " + data[0]);
      // println("Pigment Column: " + rank[0]);
      columnValue = int(rank[0]);
    } 

    catch(Exception problem4) {
      print("Problem with: " + problem4); 
    }

    // if that cell has a 1 in it, then i'm good
    // if that cell has a 0 in it, try again.
    if(columnValue == 1) {
      validCountry = true;
      thename = data[0];
      println(thename);
    } 
    else {
      validCountry = false;
    }
  }

  delay(20);

  try {
    sheet[10] = workbook[10].getSheet(0);  
    stats[10] = sheet[10].getCell(2,1);                // What is the stat we're looking at?
    stat[10]  = stats[10].getContents();
    
  } 
  catch(Exception problem2){
    print("Problem with: " + problem2); 
  }

  delay(20);


println("hi");


  try {
    cellSheet[10] = sheet[10].findLabelCell(thename);
    cellSheetRow[10] = cellSheet[10].getRow();

    delay(20);

    datas[10] = sheet[10].getCell(2, cellSheetRow[10]);                // Get the data
    data[10] = datas[10].getContents(); 

  } 

  catch(Exception l) {
    println(stat[10] + ": ");
    println("Problem: " + l + " in workbook " + 10); 
    println(" "); 

    data[20] = "not available";

  }

  population = int(data[10]);
  
    println(population);

}
