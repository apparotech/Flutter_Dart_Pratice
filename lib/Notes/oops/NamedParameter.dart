
/*
✅ Named Parameter kya hota hai?

Dart mein function ya constructor ko arguments dete waqt tum uske naam se value pass karte ho — ise named parameter kehte hain.

🔹 Iska fayda:
  Tumhe arguments ka order yaad rakhne ki zarurat nahi hoti

  Code readable aur maintainable hota hai


🔍 Example Without Named Parameters (Positional):
class Person {
  final String name;
  final int age;

  Person(this.name, this.age); // positional parameters
}

void main() {
  var p = Person("Aman", 22); // order important hai
}
👉 Yahan "Aman" name ke liye hai aur 22 age ke liye — order galat hua to problem ho sakti hai.

✅ Example With Named Parameters:
class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age}); // named parameters
}

void main() {
  var p = Person(name: "Aman", age: 22); // order chahe jo ho, chalega
}


🔐 Named Parameters ke Features:
| Feature                      | Description                                                   |
| ---------------------------- | ------------------------------------------------------------- |
| ✅ **Flexible order**         | Tum kisi bhi order mein parameters de sakte ho                |
| ✅ **Required/Optional**      | `required` likh ke mandatory bana sakte ho                    |
| ✅ **Default values**         | Optional parameters ke saath default value de sakte ho        |
| ❌ **Underscore not allowed** | Named parameters private `_name` ke form mein nahi likh sakte |

 */