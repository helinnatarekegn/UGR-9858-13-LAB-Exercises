abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius; // Assuming Pi is 3.14
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  
  Circle circle = Circle(20.0);
  double circleArea = circle.calculateArea();
  print("Area of circle with radius ${circle.radius}: $circleArea");

  
  Square square = Square(8.0);
  double squareArea = square.calculateArea();
  print("Area of square with side ${square.side}: $squareArea");
}
