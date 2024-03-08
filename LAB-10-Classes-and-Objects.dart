class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
  
  var person1 = Person("helinna", 22, "cmc");
  var person2 = Person("meron", 29, "bole");

  print("Details of person1:");
  person1.displayDetails();

  print("\nDetails of person2 before modification:");
  person2.displayDetails();
  person2.age = 28;
  person2.address = "megenagna";
  print("\nDetails of person2 after modification:");
  person2.displayDetails();
}
