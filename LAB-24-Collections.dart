void main() {
  
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 90);
  studentMarks.putIfAbsent('Charlie', () => 75);

  print('Map of student names and marks:');
  print(studentMarks);

  print('\nIterating over the map:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  String studentNameToCheck = 'Bob';
  print('\nChecking if $studentNameToCheck exists:');
  if (studentMarks.containsKey(studentNameToCheck)) {
    print('$studentNameToCheck exists in the map with mark ${studentMarks[studentNameToCheck]}');
  } else {
    print('$studentNameToCheck does not exist in the map');
  }
}
