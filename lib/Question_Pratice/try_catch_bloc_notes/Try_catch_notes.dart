
/*
throw ArgumentError('7 is odd.');
 throw Exception('Generic exception'),
 throw ArgumentError('Invalid argument'),
 throw FormatException('Wrong format'),
 throw 'Raw string error',


throw dekhte hi Dart:

ArgumentError object banata hai.

Error ka message set karta hai: '7 is odd.'

Current function se jump karke catch block dhoondta hai.

Agar catch mila:
Control us block me chala jata hai.

Error handle hoti hai.

Agar catch nahi mila:
Program crash ho jata hai.

Terminal me error dikhta hai.

---------finally BLOC--------

finally block ek aisa block hota hai jo hamesha chalta hai – chahe koi exception aaye ya na aaye.

Note: finally block optional hota hai. Agar likhte ho, to try aur catch ke baad aata hai.

 eg --
 */
void main() {
  try {
    int result = 10 ~/ 2; // Try changing this to 10 ~/ 0 for error
    print("Result: $result");
  } catch (e) {
    print("Exception caught: $e");
  } finally {
    print("This will always run (closing resources, etc).");
  }
}

/*
--------------  on Block--------------

 – Jab Exception Type Pata Ho

 on block tab use karte hain jab tumhe pata ho ki kaun sa specific exception aa sakta hai.

 eg -

 void main() {
  try {
    int result = 10 ~/ 0;
    print("Result: $result");
  } on IntegerDivisionByZeroException catch (e) {
    print("Caught specific exception: $e");
  } finally {
    print("Finally block executed.");
  }
}

 Output:

Caught specific exception: IntegerDivisionByZeroException
Finally block executed.


 Example 2: FormatException (String to int conversion)

 void main() {
  try {
    String value = "abc";
    int number = int.parse(value);
    print("Number is $number");
  } on FormatException catch (e) {
    print("Caught FormatException: $e");
  }
}

Output: Caught FormatException: FormatException: Invalid radix-10 number (at character 1)
abc


Example 3: FileSystemException (with dart:io)

import 'dart:io';

void main() {
  try {
    File file = File('non_existing_file.txt');
    String content = file.readAsStringSync();
    print(content);
  } on FileSystemException catch (e) {
    print("File error: ${e.message}");
  }
}


 */

