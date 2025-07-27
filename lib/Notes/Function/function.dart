import 'package:flutter/material.dart';

/*
--------------------Anonymous Function In Dart----------------------
This tutorial will teach you the anonymous function and how to use it.
You already saw function like main(), add(), etc.
 These are the named functions, which means they have a certain name.

But not every function needs a name.
If you remove the return type and the function name, the function is called anonymous function.
 */



void main() {
// Anonymous function
  var cube = (int number) {
    return number * number * number;
  };

  print("The cube of 2 is ${cube(2)}");
  print("The cube of 3 is ${cube(3)}");

}
