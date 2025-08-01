

/*

----------Wrong Method  ❌❌❌❌❌-------------------------
class Camera {


 final int _id;
 final String _brand;
final String _color;
final double _price;

const Camera({ required this._id, required this._brand, required this._price, required  this._color}); //  Named parameters


}
---------------------------

Dart mein:
Underscore _ se start hone wali variables/methods → private hoti hain within the library.
Lekin named parameters ({ required this._id }) ka use class ke bahar se hota hai.
Dart ke compiler ko ye conflict lagta hai:

Agar koi parameter underscore se start ho raha hai, to wo private hona chahiye
Lekin tum usse named argument bana ke publically pass kar rahe ho — ye mismatch hai

 */