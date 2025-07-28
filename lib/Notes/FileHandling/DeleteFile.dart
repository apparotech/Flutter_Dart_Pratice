
import 'dart:io';

void main() {

  File file = File('C:/Users/kuuma/AndroidStudioProjects/Questions_Pratice/lib/Notes/FileHandling/raj.txt');

  if(file.existsSync()) {
    file.deleteSync();
    print('File deleted');
  } else {
    print('File does not exist');
  }


}