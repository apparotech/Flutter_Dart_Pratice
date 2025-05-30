
import 'dart:io';

  void printArrya (List<List<int>> arr ) {

  }

void main() {

  print("Enter the size of row");
  int r = int.parse(stdin.readLineSync()!);

  print("Enter the size of column");
  int c  = int.parse(stdin.readLineSync()!);

 // List<List<int>>  arr = [];
  print("Enter the ${r*c}  element");

List<List<int>> arr = List.generate(r, (_) => List.filled(c,0));

for(int i =0 ; i<r; i++) {
  List<String> line  = stdin.readLineSync()!.split(' ');
  for(int j =0; j<c; j++) {
    arr[i][j] = int.parse(line[j]);
  }

 //  print("\nOriginal Matrix :");


}

  for(var row in arr) {
    print(row);
  }







 }
