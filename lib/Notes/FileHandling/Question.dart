
import 'dart:io';

void main() async{

  Directory directory = Directory('C:\\Users\\kuuma\\OneDrive\\Desktop');

  if(!await directory.exists()) {

    await directory.create();
  }

  for(int i =0; i<=5; i++) {
    String fileName = 'file_$i.txt';
    File file = File('${directory.path}/$fileName');

    await file.writeAsString('This is file number $i');
    print('Created: $fileName');
  }

  print('All file created');


}