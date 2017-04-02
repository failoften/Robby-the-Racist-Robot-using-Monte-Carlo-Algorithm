////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                            //
//    ROBBY THE RACIST ROBOT                                                                                  //
//    Created by David Steele Overholt                                                                        //
//    Introduction to Computational Media                                                                     //
//    December 2007                                                                                           //
//    Randomization modified from Daniel Shiffman's Monte Carlo algorithm: http://www.shiffman.net            //
//                                                                                                            //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////


import java.io.File;
import java.util.Date;
import jxl.*; 
import processing.video.*;
import processing.serial.*;

Serial scanner;

int scannerReady = 1;
boolean scanning = false;

boolean goAhead = true;
boolean validCountry = false;
int population = 0;
int columnValue;
int pigmentNum = 1;
String thename = "";
String Vid1 = "USB Video Class Video";

Capture video;

// ARRAY OF COLORS OF ENTIRE VIDEO IMAGE
float[] reds;
float[] greens;
float[] blues;

// SETUP THE AVERAGE COLOR VARIABLES
float theRed;
float theGreen;
float theBlue;



Workbook[] workbook = new Workbook[11];
Sheet[] sheet = new Sheet[11];
Cell[] stats = new Cell[11];
String[] stat = new String[11];
Cell[] cellSheet = new Cell[11];
int[] cellSheetRow = new int[11];
Cell[] datas = new Cell[11];
String[] data = new String[11];
Cell[] ranks = new Cell[11];
String[] rank = new String[11];



int d = day();    // Values from 1 - 31
int m = month();  // Values from 1 - 12
int y = year();   // 2003, 2004, 2005, etc.

String timeDate = "DATE: " + m + "/" + d + "/" + y + "\n\n";

float gender;
String sex;
int myNum;
String mobilePhone;
int myNetNum;
String Internet;
float happyNum;
String happy;
float electricity;
String literate;
float literateNum;
