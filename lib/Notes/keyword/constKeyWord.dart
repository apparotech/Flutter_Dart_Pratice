/*

| 🔧 **Compile Time**                                | 🚀 **Run Time**                      |
| -------------------------------------------------- | ------------------------------------ |
| App ke **start hone se pehle** code check hota hai | Jab app **chal rahi hoti hai**       |
| Errors: syntax error, missing semicolon, etc.      | Errors: internet not available, null |
| Fast execution ensure karne ke liye                | User ke action ke baad ka phase      |


 Example se samjho:

 const name = 'Raj';

Yahan const ka matlab hai ki name ka value 'Raj' compile hone ke samay hi fix ho jaayega.
Jab app chal rahi hogi (runtime), to isme koi change allowed nahi hoga.
Is value ko Dart pehle se hi memory mein store kar leta hai.

 Is line mein const ka use kyu kiya gaya?
 const Page1()
Iska matlab hai: Page1 widget kabhi change nahi hoga, iska UI static hai.
Isliye Flutter usko cache karke rakhega (performance better hoga).
 */