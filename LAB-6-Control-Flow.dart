import 'dart:io';

void main() {
  
  print("Enter the numeric grade out of 100:");

  
  var grade = int.parse(stdin.readLineSync()!);

  String letterGrade;
  switch (grade ~/ 10) {
    case 10:
    case 9:
      letterGrade = 'A';
      break;
    case 8:
      letterGrade = 'B';
      break;
    case 7:
      letterGrade = 'C';
      break;
    case 6:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
  }

  
  print("Corresponding letter grade: $letterGrade");
}
