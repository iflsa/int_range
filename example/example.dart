import 'package:int_range/int_range.dart';

main() {
  /// to() outputs ints in specified range
  for (int i in 0.to(5)) {
    print(i); // output: 0 1 2 3 4 5
  }
  print("");

  /// till() outputs number without the last element
  for (int i in 0.till(5)) {
    print(i); // output: 0 1 2 3 4
  }
  print("");

  /// [] is just a syntetic salt for to()
  for (int i in 0[3]) {
    print(i); // output: 0 1 2 3
  }
  print("");

  /// You can also specify a step value
  for (int i in 2.to(6, 2)) {
    print(i); // output: 2 4 6
  }
  print("");

  //! "Step value must be positive.

  /// You can use it with negative values
  for (int i in (-2).till(-5)) {
    print(i); // output: -2 -3 -4
  }
  print("");

  //! Don't forget to put the first number in brackets if its negative even with `[]` operator

  /// You can use it with many higher order functions
  1.to(5).forEach((i) {
    print(i[5]);
  });
  // output:
  // (1, 2, 3, 4, 5)
  // (2, 3, 4, 5)
  // (3, 4, 5)
  // (4, 5)
  // (5)
}
