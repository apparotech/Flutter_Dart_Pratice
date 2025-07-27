/*
  --------Properties Of String-----------------
  isEmpty: Returns true if this string is empty.
  isNotEmpty: Returns false if this string is empty.
  length: Returns the length of the string including space, tab, and newline characters.

  void main() {
   String str = "Hi";
   print(str.codeUnits);   //Example of code units
   print(str.isEmpty);     //Example of isEmpty
   print(str.isNotEmpty);  //Example of isNotEmpty
   print("The length of the string is: ${str.length}");   //Example of Length
}

 ------ -----Methods Of String------------------------

  toLowerCase(): Converts all characters in this string to lowercase.
  toUpperCase(): Converts all characters in this string to uppercase.
  trim(): Returns the string without any leading and trailing whitespace.

  ------------compareTo(): Compares this object to another.---------------

  void main() {
  String a = "apple";
  String b = "banana";

  print(a.compareTo(b)); // Output: -1 (kyunki 'apple' < 'banana')
  print(b.compareTo(a)); // Output: 1  (kyunki 'banana' > 'apple')
  print(a.compareTo("apple")); // Output: 0
}
------------- replaceAll()----------
Ye string ke andar jo part match hota hai, use replace kar deta hai naye value se.

void main() {
  String msg = "I love pizza. Pizza is life.";

  print(msg.replaceAll("Pizza", "Pasta"));
  // Output: I love pizza. Pasta is life.
}

--------------split()-------------
➤ Kya karta hai?
Ye string ko split (todta) hai ek given delimiter (jaise comma, space, etc.) se.

➤ Return karta hai:
Ek List of substrings

void main() {
  String data = "apple,banana,mango";

  List<String> fruits = data.split(",");
  print(fruits); // Output: [apple, banana, mango]
}
----------toString()------------
Kisi bhi object ka string representation return karta hai.

void main() {
  int age = 25;
  String ageStr = age.toString();
  print(ageStr); // Output: "25"
}

-------------substring()---------------
Ye string ka part (substring) return karta hai based on indexes.

➤ Syntax:
string.substring(startIndex, [endIndex])

startIndex: shuru kaha se karna hai

endIndex: kaha tak lena hai (exclusive)

void main() {
  String name = "Flutter";

  print(name.substring(0, 3)); // Output: Flu
  print(name.substring(3));   // Output: tter (3rd se end tak)
}
--------------------codeUnitAt()----------------
String ke kisi index par character ka UTF-16 code unit deta hai (i.e., number).

void main() {
  String name = "Raj";
  print(name.codeUnitAt(0)); // Output: 82 (R ka Unicode)
  print(name.codeUnits);     // Output: [82, 97, 106]
}
----------------Reverse String In Dart--------------
void main() {

  String input =  'Hello';
  print('$input Reverse is ${input.split('').reversed.join()}');
}
--------------How To Capitalize First Letter Of String In Dart-----------------------

If you want to capitalize the first letter of a String in Dart, you can use the following code.

//Example of capitalize first letter of String
void main() {
  String text = "hello world";
  print("Capitalized first letter of String: ${text[0].toUpperCase()}${text.substring(1)}");
}
 */

void TotalAmount(double amount, double person) {
  double price =  amount /person;
  print(price);
}
void main() {
 String name = '123';
int  n = int.parse(name);
 print(n);


}