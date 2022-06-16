import 'dart:io';

//import 'package:fourth_homework/fourth_homework.dart' as fourth_homework;
/*
In my code, I will create a calculation for high school students coming for
college registration and show which major suits their grades.
 */

void main() {
  print(
      "---------------------------------------------------------------------------------------------\n");
  print(
      "Welcome, here will be the calculation of the weight of Imam Muhammad bin Saud University \n");

  print(
      "---------------------------------------------------------------------------------------------\n");

  print("Please enter the SAAT score...\n");
  double saat = double.parse(stdin.readLineSync()!);
  print("Please enter the GAT score...\n");
  int gat = int.parse(stdin.readLineSync()!);
  print("Please enter your achievement score...\n");
  int achievement = int.parse(stdin.readLineSync()!);
  print(
      "---------------------------------------------------------------------------------------------\n");

  double result = (0.3 * saat) + (0.3 * gat) + (0.4 * achievement);
  print(
      "The degree obtained is ${result.toStringAsFixed(2)}% \n"); // راح تطلع النسبه و و رقمين بعد الفاصله
  print("\n");
  if (result <= 100 && result >= 90) {
    print(
        "The degrees obtained qualify you to enter ALL specializations :))\n");
  } else if (result < 90 && result >= 80) {
    print(
        "The degrees obtained qualify you to enter the specializations of computer and engineering :) \n");
  } else if (result < 80 && result >= 70) {
    print(
        "The degrees obtained qualify you to enter the specializations of administrative :) \n");
  } else if (result < 70 && result >= 60) {
    print(
        "The degrees obtained qualify you to enter the specializations of languages and translation - science :) \n");
  } else if (result < 60 && result >= 50) {
    print(
        "The degrees obtained qualify you to enter the specializations of sharieuh - media :) \n");
  } else {
    print(
        "I apologize, your grades don't qualify you to enter the university in any specialization :( \n");
  }

  print(
      "---------------------------------------------------------------------------------------------\n");
}
