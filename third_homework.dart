
import 'dart:collection';
import 'dart:io';
import 'package:test_api/backend.dart';


  /* 
  so i will explain the idea of the code is [hosting a praduation ceremony]
  it is have 5 variables "volunteers, graduate student, techers, attendees, buffet "
  volunteers:thet will organize the ceremony.
  graduate student:student will graduate.
  techers:they hand over the certificate to the graduate student.
  attendees:graduate student families.
  buffet:it has coffee, sweets and some sandwiches. 
  */ 
  
  List <Map<String,String?>> volunteersInformation = [
    {"FirstName": "Waad", "LastName": "alasam", "YearOfBithday": "2001", "ID":"1", "Gender":"Female"},
    {"FirstName": "Osama", "LastName": "alqarne", "YearOfBithday": "1997", "ID":"2", "Gender":"male"},
    {"FirstName": "Razan", "LastName": "Alabdulkarim", "YearOfBithday": "1999", "ID":"3", "Gender":"Female"},
    {"FirstName": null, "LastName": null, "YearOfBithday": null, "ID":null, "Gender":null},
    {"FirstName": "Arwa", "LastName": "alareny", "YearOfBithday": "2000", "ID":"5", "Gender":"Female"}
  ];

  var graduateSudentDegree = {
      'Distinction First Class Honors' : 2,
      'Distinction Second Class Honors':3
  };

  String? techerName = null;

  int attendees = 5; //كل طالب له 5 دعوات

  List<String> buffet = [
    "coffee",
    "sweets",
    "sandwiches"
  ];


void main(){//start main

  //print menu..
  var listOfOptions =['volunteers', 'graduate student', 'techers', 'attendees', 'buffet'];
  print('____________________________________________\n');

  stdout.writeln("Hello Please choose one of the options... \n");//like print line in java

  listOfOptions.forEach((index){
    print("${listOfOptions.indexOf (index)+1}. ${index}");
  });

  print('____________________________________________\n');
  //Scanner input
  String? inputOfindex = stdin.readLineSync();



 //===================================================================================================
 
 //the options..
  switch(inputOfindex){

    case '1'://volunteersInformation

    //scanner input
    print('____________________________________________\n');
    print("hello our volunteers Please inter your ID <3");
    String? vinputOfId = stdin.readLineSync();
    print('____________________________________________\n');
     

    //Start Loop
    for(int i=0; i<volunteersInformation.length-1;i++){

      var vid = volunteersInformation[i]["ID"];

     
      if(vid==null){//means empty
        print("somthing wint worng... \n your information gone ?~?");
        print("==> ${volunteersInformation[i]}");
        print("is it empty? yes");
        print("\n");
        break;

      }
      if(vinputOfId==vid){//means not empty
        print("this is you information <3");
        print("==> ${volunteersInformation[i]}");
        print("is it empty? \" false = no , true = yes \"");
        print(volunteersInformation[i++].isEmpty);
        print(" \n");
        break;
      }
      
    }//end Loop

    break;
    //end case 1

    //===============================================

    case '2'://graduateSudentDegree

    //scanner input
    print('____________________________________________\n');

    print("congratulation for graduation <3...");
    print("Student with [Distinction First Class Honors] are: ${graduateSudentDegree["Distinction First Class Honors"]} and Student with [Distinction Second Class Honors] are: ${graduateSudentDegree["Distinction Second Class Honors"]} ");//like print line in java
    
    print('____________________________________________\n');
     

    break;
    //end case 2

    //===============================================

    case '3'://techerName

    //scanner input
    print('____________________________________________\n');
    print("Hello,  ");
    var techer =['Hanan', 'Amany', 'Maha', 'bodour', 'kadeja'];
   
    stdout.writeln("[[Please write the name]] who do you want to be responcepel on graduation 2022 \n");//like print line in java
    techer.forEach((index2){
    print("${techer.indexOf(index2)+1}. ${index2}");
    });
    print('____________________________________________\n');
    //int tinputOfId = int.parse(stdin.readByteSync());
    techerName = stdin.readLineSync();
    print('____________________________________________\n'); 
    print("Okey then T.${techerName} will be respond");
    print('____________________________________________\n');
    break;
    //end case 3

    //===============================================

    case '4'://attendees
    //scanner input
    print('____________________________________________\n');
    print("Every graduate student have ${attendees} cards.");
    print('____________________________________________\n');
    break;
    //end case 4

    //===============================================

    case '5'://buffet
       //scanner input
    print('____________________________________________\n');
    print("The university will offer a buffet and it will be there ${buffet[0]},${buffet[1]} and ${buffet[2]}. ");
    print('____________________________________________\n');
    break;
    //end case 5

    default:
    print("Please select from the menu! ");
    print("sorry try to run it again ^~^");
    break;


  }//end switch



}//end main

