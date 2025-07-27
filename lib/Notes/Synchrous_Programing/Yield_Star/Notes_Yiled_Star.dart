

// yield* :- yield* ka use tab hota hai jab tum ek aur stream ya generator function se saari values ek hi stream mein include karna chahte ho.
 // eg:

Stream<int> countUpto3() async* {
  yield 1;
  yield 2;
  yield 3;
}

Stream<int> getNumbers() async* {
  yield* countUpto3(); // Iska matlab hai 1,2,3 ko is stream mein include karo
  yield 4;
}

void main() async {
  await for (var num in getNumbers()) {
    print("Number aaya: $num");
  }
}



 /*

 // output
 Number aaya: 1
 Number aaya: 2
 Number aaya: 3
 Number aaya: 4

   Difference in short:  Yield vs Yield*

 yield
      Ek single value deta hai
      Jab value ek ek karke deni ho

  yield*
      Ek stream ya iterable se multiple values deta hai
      Jab doosri stream ya list ko merge karna ho





  */

