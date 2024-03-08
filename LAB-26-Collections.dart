class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0; 
    }

    int total = marks.reduce((value, element) => value + element);
    return total / marks.length;
  }
}

void main() {
  
  Student student1 = Student('Alice', [85, 90, 95, 88, 92]);

  double averageMark = student1.calculateAverageMark();
  print('${student1.name}\'s average mark: $averageMark');
}
