# Int Range v.1.0.0
Int extension to support ranges in dart.

## Usage

`int.to(int)` outputs ints in specified range:
```dart
for (int i in 0.to(5)) {
    print(i); // output: 0 1 2 3 4 5
}
```

`int.till(int)` outputs number without the last element:
```dart
for (int i in 0.till(5)) {
    print(i); // output: 0 1 2 3 4
}
```

`int[]` is just a syntetic salt for `int.to(int)`:
```dart
for (int i in 0[3]) {
    print(i); // output: 0 1 2 3
}
```

You can also specify a step value:\
**Step value must be positive!**
```dart
for (int i in 2.to(6, 2)) {
    print(i); // output: 2 4 6
}
```

You can use it with negative values: \
**With negative values the first value mus be in brakets!**
```dart
for (int i in (-2).till(-5)) {
    print(i); // output: -2 -3 -4
}
```

You can use it with many higher order functions:
```dart
1.to(5).forEach((i) {
    print(i[5]);
});
// output:
// (1, 2, 3, 4, 5)
// (2, 3, 4, 5)
// (3, 4, 5)
// (4, 5)
// (5)
```
