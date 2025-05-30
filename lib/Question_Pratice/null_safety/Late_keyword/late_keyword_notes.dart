
/*
//--------------------late keyword----------

 Dart me late keyword ka use hum non-nullable variables ke sath karte hain jinka value turant assign nahi karna hota, lekin hum Dart ko ye batate hain ki:
 "Bhai, abhi value mat do, lekin mai aage chalke isko zarur value dunga, isliye error mat dena."

 late ka Simple Meaning:
 Variable ko abhi initialize nahi kar rahe.
 Lekin Dart ko guarantee dete hain ki use karne se pehle value zarur milegi.

 ⚠️ Warning:
    Agar aap late variable ko use kar loge bina value assign kiye, to runtime me LateInitializationError aayega:
    late String city;
    print(city); // ❌ Error: LateInitializationError


 Eg-
✅ Example Without late (Error aayega):
 void main() {
  String name;
  print(name); // ❌ Error: Non-nullable variable must be initialized
}

✅ Example With late (Correct):

void main() {
  late String name;
  name = "Raj";
  print(name);  // ✅ Output: Raj
}

 // --------------------- late final keyword ----------------------

 Abhi assign nahi karna,

 Lekin future me ek hi baar assign karna hai,

 Aur uske baad uski value change nahi honi chahiye.

 late:
"Value baad me assign karunga."

final:
"Ek hi baar assign karunga. Uske baad change nahi karunga."

✅ Together: late final
"Value abhi nahi, baad me dunga, lekin ek hi baar dunga."

 Syntax: late final String name;

 Real Example:

class Student {
  late final String name;

  Student(String studentName) {
    name = studentName;
  }

  void showName() {
    print("Student name: $name");
  }
}

void main() {
  Student s = Student("Raj");
  s.showName(); // ✅ Output: Student name: Raj
}

⚠️ What if you try to assign again?

void main() {
  late final String city;
  city = "Delhi";
  city = "Mumbai"; // ❌ Error: Late final field 'city' already assigned.
}

 */

class Person {
  late String name;

  void setName(String newName) {
    name = newName;
  }

  void greet() {
    print("Hello, $name!");
  }
}

void main() {
  Person p = Person();
  p.setName("Raj");
  p.greet();  // Output: Hello, Raj!
}
