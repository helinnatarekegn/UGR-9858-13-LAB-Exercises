import 'dart:io';

void main() {
  stdout.write('Enter a number: ');

  try {
    
    String userInput = stdin.readLineSync()!;

    int number = int.parse(userInput);

    print('Integer representation of the input: $number');
  } catch (e) {
    
    print('Error: Invalid input. Please enter a valid number.');
  }
}
