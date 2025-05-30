

// yield :- yield Dart mein async* functions ke andar use hota hai. Ye ek-ek karke values stream (ya generator) mein return karta hai.

//eg:
Stream<int> getNumbers() async* {
  yield 1; // pehle 1 milega
  yield 2; // fir 2 milega
  yield 3; // fir 3 milega
}
//  Samajh lo: yield ek tarah se "pause" karta hai function ko, value deta hai, aur fir next time continue karta hai.

//  Example: Yield vs Yield*

Stream<int> basicNumbers() async* {
  yield 1;
  yield 2;
}

Stream<int> allNumbers() async* {
  yield* basicNumbers(); // merge karega 1,2
  yield 3; // khud ka 3
}

void main() async {
  await for (var num in getNumbers()) {
    print("Number aaya: $num");
  }
}