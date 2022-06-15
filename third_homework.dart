
import 'dart:io';


  /* 
  so i will explain the idea of the code is [hosting a praduation ceremony]
  it is have 5 variables "volunteers, graduate student, techers, attendees, buffet "
  volunteers:thet will organize the ceremony.
  graduate student:student will graduate.
  techers:they hand over the certificate to the graduate student.
  attendees:graduate student families.
  buffet:it has coffee, sweets and some sandwiches. 
  */ 
  List <Map<String,String?>> volunteersInfo = [
    {"FirstName": "Waad", "LastName": "alasam", "YearOfBithday": "2001", "ID":"1", "Gender":"Female"},
    {"FirstName": "Osama", "LastName": "alqarne", "YearOfBithday": "1997", "ID":"2", "Gender":"male"},
    {"FirstName": "Shaud", "LastName": "aldawe", "YearOfBithday": "1999", "ID":"3", "Gender":"Female"},
    {"FirstName": null, "LastName": null, "YearOfBithday": null, "ID":null, "Gender":null},
    {"FirstName": "shroq", "LastName": "alareny", "YearOfBithday": "2000", "ID":"5", "Gender":"Female"}
  ];

  List <Map<dynamic,String?>> graduateSudentInfo = [
    {"FirstName": "nouf", "LastName": "alsaleh", "YearOfBithday": "2004", "ID":"11", "Gender":"Female", "GPA":"1 class honors"},
    {"FirstName": null, "LastName": null, "YearOfBithday": null, "ID":null, "Gender":null, "GPA":null},
    {"FirstName": "manar", "LastName": "alqapane", "YearOfBithday": "1998", "ID":"13", "Gender":"Female", "GPA":"1 class honors"},
    {"FirstName": "aziz", "LastName": "hamd", "YearOfBithday": "2002", "ID":"14", "Gender":"male", "GPA":"2 class honors"},
    {"FirstName": "hawazn", "LastName": "altrke", "YearOfBithday": "1995", "ID":"15", "Gender":"Female", "GPA":"2 class honors"}
  ];

  List <Map<String,int?>> techersIdjob = [
    {"ID": 111, "password":1234 },
    {"ID": null, "password":null},
    {"ID": 113, "password":5678}
  ];

  List <Map<String,bool?>> attendeesInfo = [
    {"studentid": true, "families": true },
    {"studentid": null, "kids": null }
  ];

  List <Map<String,double?>> buffetInfo = [
    {"company":null,"coffee": null},
    {"company":12.0,"sweets": 100.20},
    {"company":13.0,"sandwiches": 200.50}
  ];


void main(){

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
    case '1':

    //scanner input
    print('____________________________________________\n');
    print("hello our volunteers Please inter your ID <3");
    String? vinputOfId = stdin.readLineSync();
    print('____________________________________________\n');
     

    //Start Loop
    for(int i=0; i<volunteersInfo.length;i++){

      var vid = volunteersInfo[i]["ID"];


      if(vid==null){//means empty
        print("somthing wint worng... \n your information gone ?~?");
        print("==> ${volunteersInfo[i]}");
        print("is it empty? yes");
        print("\n");
        break;

      }
      if(vinputOfId==vid){//means not empty
        print("this is you information <3");
        print("==> ${volunteersInfo[i]}");
        print("is it empty? \" false = no , true = yes \"");
        print(volunteersInfo[i++].isEmpty);
        print(" \n");
        break;
      }
      
    }//end Loop

    break;
    //end case 1

    //===============================================

    case '2':

    //scanner input
    print('____________________________________________\n');
    print("congratulation for graduation <3... Please inter your ID ");
    String? ginputOfId = stdin.readLineSync();
    print('____________________________________________\n');
     

    //Start Loop
    for(int i=0; i<graduateSudentInfo.length;i++){

      var gid = graduateSudentInfo[i]["ID"];


      if(gid==null){//means empty
        print("somthing wint worng... \ncontact your academic advisor!!");
        print("==> ${graduateSudentInfo[i]}");
        print("sorry this informaton is empty");
        print("\n");
        break;

      }
      if(ginputOfId==gid){//means not empty
        print("this is you information <3 bay ");
        print("==> ${graduateSudentInfo[i]}");
        print("is it empty? \" false = no , true = yes \"");
        print(graduateSudentInfo[i++].isEmpty);
        print(" \n");
        break;
      }
      
      
    }//end Loop

    break;
    //end case 2

    //===============================================

    case '3'://techersIdjob

    //scanner input
    print('____________________________________________\n');
    print("welcome, Please inter your ID ");
    //int tinputOfId = int.parse(stdin.readByteSync());
    int tinputOfId = stdin.readByteSync();
    print('____________________________________________\n');
     

    //Start Loop
    for(int i=0; i<techersIdjob.length;i++){

      int? tid = techersIdjob[i]["ID"];


      if(tid==null){//means empty
        print("somthing wint worng... \ncontact with IT!");
        print("==> ${techersIdjob[i]}");
        print("sorry this informaton is empty");
        print("\n");
        break;

      }
      if(tinputOfId==tid){//means not empty
        print("this is you information... ");
        print("==> ${techersIdjob[i]}");
        print("is it empty? \" false = no , true = yes \"");
        print(techersIdjob[i++].isEmpty);
        print(" \n");
        break;
      }
      
      
    }//end Loop

    break;
    //end case 3

    //===============================================

    case '4':
     //scanner input
    print('____________________________________________\n');
    print("welcome, attendees that allow to come ");
    //int tinputOfId = int.parse(stdin.readByteSync());
    bool ainputOfId = stdin.readLineSync();
    print('____________________________________________\n');
     

    //Start Loop
    for(int i=0; i<attendeesInfo.length;i++){

      bool? aid = attendeesInfo[i]["studentid"];


      if(aid==null){//means empty
        print("somthing wint worng... \ncontact with IT!");
        print("==> ${attendeesInfo[i]}");
        print("sorry this informaton is empty");
        print("\n");
        break;

      }
      if(ainputOfId==aid){//means not empty
        print("it is approve... ");
        print("==> ${attendeesInfo[i]}");
        print("is it empty? \" false = no , true = yes \"");
        print(attendeesInfo[i++].isEmpty);
        print(" \n");
        break;
      }
      
      
    }//end Loop

    break;
    //end case 4

    //===============================================

    case '5':
       //scanner input
    print('____________________________________________\n');
    print("buffet left ");
    //int tinputOfId = int.parse(stdin.readByteSync());
    double binputOfId = stdin.readByteSync();
    print('____________________________________________\n');
     

    //Start Loop
    for(int i=0; i<buffetInfo.length;i++){

      double? cid = buffetInfo[i]["company"];


      if(cid==null){//means empty
        print("somthing wint worng... \n");
        print("==> ${attendeesInfo[i]}");
        print("sorry this buffet is empty");
        print("\n");
        break;

      }
      if(binputOfId==cid){//means not empty
        print("there are left of buffet... ");
        print("==> ${buffetInfo[i]}");
        print("is it empty? \" false = no , true = yes \"");
        print(buffetInfo[i++].isEmpty);
        print(" \n");
        break;
      }
      
      
    }//end Loop

    break;
    //end case 5

    default:
    print("Please select from the menu! ");
    print("sorry try to run it again ^~^");
    break;


  }



}
