class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, this.rollNumber, this.marks) : super(name, age);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  
  Student student1 = Student("kebron", 20, 101, [85, 70, 95, 93, 88]);

  
  int totalMarks = student1.calculateTotalMarks();
  print("Total marks : $totalMarks");

  
  double averageMarks = student1.calculateAverageMarks();
  print("Average marks: $averageMarks");
}
