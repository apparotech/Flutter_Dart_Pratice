/*
  Super in Dart – Kya Hota Hai?

  super ek keyword hai jo parent (ya base) class ke properties ya methods ko access karne ke liye use hota hai.

  Jab tum ek class ko inherit karte ho (yaani extends ka use karte ho), to super ka use parent class ke method ya constructor ko call karne ke liye hota hai.

  ✅ Example 1: Method Access via super

  class Parent {
  void greet() {
    print("Hello from Parent");
  }
}

class Child extends Parent {
  @override
  void greet() {
    print("Hello from Child");
    super.greet(); // Parent class ka method call kiya
  }
}

void main() {
  Child obj = Child();
  obj.greet();
}
📌 Output:
Hello from Child
Hello from Parent

✅ Example 2: Accessing Parent Property using super

class Vehicle {
  String type = "Generic Vehicle";
}

class Car extends Vehicle {
  void showType() {
    print("This is a car.");
    print("Type: ${super.type}"); // Parent class ki property
  }
}

void main() {
  Car c = Car();
  c.showType();
}

📌 Output:

This is a car.
Type: Generic Vehicle

✅ Example 3: Constructor mein super ka use


class Person {
  String name;

  Person(this.name) {
    print("Person Constructor called");
  }
}

class Student extends Person {
  int rollNo;

  Student(String name, this.rollNo) : super(name) {
    print("Student Constructor called");
  }

  void showDetails() {
    print("Name: $name");
    print("Roll No: $rollNo");
  }
}

void main() {
  Student s = Student("Raj", 101);
  s.showDetails();
}

📌 Output:

Person Constructor called
Student Constructor called
Name: Raj
Roll No: 101

🧠 Yahaan kya hua?
Student class ne Person class ko extend kiya.

super(name) ka use karke parent class ka constructor call kiya gaya.

 */

class Employee {

  Employee(String name, double salaray) {
    print('Employee constructor');
    print('name$name');
    print('salary$salaray');
  }


}

class Manager extends Employee {

  Manager(String name, double salaray) : super(name, salaray) {
    print('Manager constructor');
  }
}

void main() {
  Manager m = Manager('raj', 300);

}