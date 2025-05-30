
import 'dart:convert';




Stream<int> getData() async*  {
  for(int i =0; i<5; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}



void main ()  async

{
await for(int value in  getData()) {
  print(value);
}

}