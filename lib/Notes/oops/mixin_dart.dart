/*

  Mixins kya hota hai?
- Mixins Dart mein ek tarika hai jisse hum ek class ka code dusri classes ke saath reuse kar sakte hain — bina inheritance ka use kiye.

✅ Mixins banate kaise hain?

mixin Logger {
  void log(String message) {
    print('Log: $message');
  }
}

🔗 Use kaise karte hain?

class FileManager with Logger {
  void saveFile() {
    log("File saved successfully.");
  }
}

void main() {
  FileManager fileManager = FileManager();
  fileManager.saveFile();
}

🧠 Yahaan kya hua?
with Logger ka use karke humne Logger mixin ko FileManager class mein include kar diya.

FileManager ab log() method use kar sakti hai jaise wo uski apni ho.


📌 Important Rules

❌ Mixin ka object nahi banaya ja sakta. (No instantiation)

🧱 Mixin ka constructor nahi hota.

🔁 Ek class mein multiple mixins bhi use kiye ja sakte hain.

⛔ Mixin ko extend nahi kiya ja sakta.

➕ Agar aap chahte ho ki mixin sirf kuch specific classes pe hi apply ho to on ka use kar sakte ho.

 ➕ Multiple mixins ka use:

 mixin Printable {
  void printDetails() {
    print("Printing details...");
  }
}

mixin Shareable {
  void share() {
    print("Sharing content...");
  }
}

class Document with Printable, Shareable {}

void main() {
  Document doc = Document();
  doc.printDetails();
  doc.share();
}

--------------------🛡️ on keyword ka use:----------------

class Animal {}

mixin CanBark on Animal {
  void bark() {
    print("Barking...");
  }
}

class Dog extends Animal with CanBark {}

void main() {
  Dog dog = Dog();
  dog.bark();
}
Agar aap CanBark ko kisi class ke saath use karne ki koshish karoge jo Animal se extend nahi karti, to error aayega. Kyunki on Animal ne condition laga diya hai.

------------------------------------------------------------

🔚 Summary
mixin likhkar mixin banao.

with ka use karke class mein mixin add karo.

on ka use karke specific class types ko target karo.

Constructors nahi hote, objects nahi bante.

 */

class Animal {}

mixin CanBark on Animal {
  void bark() {
    print("Barking...");
  }
}

class Dog extends Animal with CanBark {}

void main() {
  Dog dog = Dog();
  dog.bark();
}
