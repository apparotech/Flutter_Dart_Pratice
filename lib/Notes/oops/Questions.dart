
class Animal {
  int? id;
  String? name;
  String? Color;

}

class Cat  extends Animal{
  String?  sound;

  void disply() {
    print('id: $id, name: $name,  color: $Color, sound: $sound');
  }

}


void main () {
 Cat cat = Cat();
 cat.name = "haapy";
 cat.id = 20;
 cat.Color = "yellow";
 cat.sound = "bark";

 List<Cat> c = [cat];
  for(var ca in c) {
    ca.disply();
  }

}