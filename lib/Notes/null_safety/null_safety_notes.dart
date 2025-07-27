/*

Dart me Non-Nullable by Default ka matlab hai ki koi bhi variable ya field null nahi ho sakti jab tak aap explicitly null allow na karo

eg:
String name; -> Error aayega, kyunki null allow nahi

String? name; -> Ab ye variable null ho sakta hai (Ab aap isme null assign kar sakte ho: name = null)

/---------------- ! operator --------------------

Ye operator Dart ko force karta hai ki variable null nahi hai, aur uska use kare.

eg:
 String? name = "Raj";
 print(name!); // ✅ ye chalega

 String? name2 = null;
 print(name2!); // ❌ Runtime error: Null check operator used on a null value

note-
     👉 name! ka matlab hai "Mujhe pata hai ye null nahi hai."
     ⚠️ Agar wo actually null hua, to runtime crash hoga. Use carefully karo.
        name! - "Main guarantee deta hoon ki name null nahi hai, to Dart tu tension mat le."
        ! operator tabhi use karo jab aapko 100% sure ho ki variable null nahi hai.


/---------------------------------------------------------------------------


/------------------------------------ ?? operator   -------------------------------

->  Default value dena agar variable null ho
eg:
 String? name;
String finalName = name ?? "Guest";

print(finalName); // Output: Guest

👉 ?? ka matlab hai:
"Agar left side null ho, to right side ka value use karo."

 int? age;
 int myAge = age ?? 18;

 print(myAge); // Output: 18


 */

class Profile {
  String? name;
  String? bio;

  Profile(this.name, this.bio);

  void printProfile() {
    print("Name: ${name ?? "Unknown"}");
    print("Bio: ${bio ?? "None provided"}");
  }
}

void main() {
  // Create a profile with a name and bio
  Profile profile1 = Profile("John", "Software engineer and avid reader");
  profile1.printProfile();

  // Create a profile with only a name
  Profile profile2 = Profile("Jane", null);
  profile2.printProfile();

  // Create a profile with only a bio
  Profile profile3 = Profile(null, "Loves to travel and try new foods");
  profile3.printProfile();

  // Create a profile with no name or bio
  Profile profile4 = Profile(null, null);
  profile4.printProfile();
}