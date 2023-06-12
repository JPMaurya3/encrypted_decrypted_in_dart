import 'dart:math';

void main() {
  String name = "Vishal";
  print("single integer of state of object hashcode:${name.hashCode}");
  print("CodeUnits ${name.codeUnits}");
  print(">>>>>>${name.codeUnitAt(2)}");
  print("object is 1:${name.toLowerCase()}");
  print("object is 2:${name.toLowerCase()}");
  print("object is 3 ${name.contains("h")}"); //true

  /*An [Iterable] of Unicode code-points of this string.
If the string contains surrogate pairs, 
they are combined and returned as one integer by this iterator. 
Unmatched surrogate halves are treated like valid 16-bit code-units */
  print(name.runes);
  print("length of name is ${name.length}");
  if (name.isEmpty) {
    print("name is empty");
  } else {
    print("name is not empty");
  }
}
