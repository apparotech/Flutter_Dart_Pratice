

import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:questions_pratice/Question_Pratice/Synchrous_Programing/exmpla1.dart';


void checkVowels(String s ) {
 
 final vowel = RegExp(r'[aeiouAEIOU]');

 if(!vowel.hasMatch(s)) {
  throw Exception( ' this is not vowel $s');
 }

 print(' this is vowel $s');

}


void Check(String s) {

 try {
  checkVowels(s);;
 } catch (e) {
  print(e);
 }

}




void main(){

String s = 'raj';
String r = 'fmmhhg';

Check(s);
Check(r);







 }

