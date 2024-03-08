double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is DivisionByZeroError) {
      throw Exception('Error: Division by zero is not allowed.');
    } else {
      throw Exception('An unexpected error occurred.');
    }
  }
}

void main() {
  double dividend = 10;
  double divisor = 0;

  try {
    double result = divideNumbers(dividend, divisor);
    print('Result of division: $result');
  } catch (e) {
    print(e);
  }
}
