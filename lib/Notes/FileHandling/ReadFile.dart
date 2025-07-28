

import 'dart:io';

void main() {

  File file = File('C:/Users/kuuma/AndroidStudioProjects/Questions_Pratice/lib/Notes/FileHandling/test.txt');
  String contents = file.readAsStringSync();
  print(contents);

  print('File path : ${file.path}');

  print('File absolute path : ${file.absolute.path}');

  print('File size: ${file.lengthSync()} bytes');
  print('Last modified: ${file.lastModifiedSync()}');



  File file2 = File('C:/Users/kuuma/AndroidStudioProjects/Questions_Pratice/lib/Notes/FileHandling/john.txt');

  String content = file2.readAsStringSync();

  List<String> lines = content.split('\n');

  print('--------------------');

  for(var line in lines) {
    print(line);
  }
  //Read Only Part Of File
String halfContent = file2.readAsStringSync().substring(0, 20);
  print(halfContent);


}