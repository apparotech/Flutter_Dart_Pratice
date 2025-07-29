
import 'dart:io';

class House {
int id;
String name;
int price;


House({
  required this.id,
  required this.name,
  required this.price
});


void display() {
  print('id: $id, name: $name,  price: $price');
}
}

void main() {

final house = House(id: 1, name: "suraj", price: 20);
final house2 = House(id:2 , name:" amit", price: 30);
final house3 = House(id: 3, name: "aman", price: 40);

List<House> list = [house, house2, house3];

for(var house in list) {
  house.display();
}



}