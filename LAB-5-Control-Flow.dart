import 'dart:io';

void main() {
  
  print("Enter the operation (+, -, *, /):");
  var operation = stdin.readLineSync()!;

  
  print("Enter the first operand:");
  var operand1 = double.parse(stdin.readLineSync()!);
  print("Enter the second operand:");
  var operand2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operation) {
    case '+':
      result = operand1 + operand2;
      break;
    case '-':
      result = operand1 - operand2;
      break;
    case '*':
      result = operand1 * operand2;
      break;
    case '/':
      if (operand2 != 0) {
        result = operand1 / operand2;
      } else {
        print("Error: Division by zero!");
        return;
      }
      break;
    default:
      print("Error: Invalid operation!");
      return;
  }

  
  print("Result: $result");
}
