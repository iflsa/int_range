import 'package:int_range/int_range.dart';
import 'package:test/test.dart';

void main() {
  group('to() with a default step', () {
    test('positive values', () {
      expect(0.to(2), equals([0, 1, 2]));
      expect(2.to(7), equals([2, 3, 4, 5, 6, 7]));
      expect(9.to(5), equals([9, 8, 7, 6, 5]));
    });
    test('nagative values', () {
      expect(0.to(-2), equals([0, -1, -2]));
      expect((-2).to(-7), equals([-2, -3, -4, -5, -6, -7]));
      expect((-9).to(-5), equals([-9, -8, -7, -6, -5]));
    });
    test('opposite signs values', () {
      expect(3.to(-2), equals([3, 2, 1, 0, -1, -2]));
      expect((-2).to(7), equals([-2, -1, 0, 1, 2, 3, 4, 5, 6, 7]));
      expect(5.to(-4), equals([5, 4, 3, 2, 1, 0, -1, -2, -3, -4]));
    });
    test('same values', () {
      expect(0.to(0), equals([0]));
      expect(5.to(5), equals([5]));
      expect((-7).to(-7), equals([-7]));
    });
    test('oposite values', () {
      expect(0.to(-0), equals([0]));
      expect(2.to(-2), equals([2, 1, 0, -1, -2]));
      expect((-3).to(3), equals([-3, -2, -1, 0, 1, 2, 3]));
    });
  });
  group('to() with a custom step', () {
    test('positive values', () {
      expect(0.to(2, 2), equals([0, 2]));
      expect(2.to(7, 3), equals([2, 5]));
      expect(9.to(5, 1), equals([9, 8, 7, 6, 5]));
    });
    test('nagative values', () {
      expect(0.to(-2, 2), equals([0, -2]));
      expect((-2).to(-7, 3), equals([-2, -5]));
      expect((-9).to(-5, 1), equals([-9, -8, -7, -6, -5]));
    });
    test('opposite signs values', () {
      expect(3.to(-2, 2), equals([3, 1, -1]));
      expect((-2).to(7, 3), equals([-2, 1, 4, 7]));
      expect(5.to(-4, 5), equals([5, 0]));
    });
    test('same values', () {
      expect(0.to(0, 3), equals([0]));
      expect(5.to(5, 2), equals([5]));
      expect((-7).to(-7, 4), equals([-7]));
    });
    test('oposite values', () {
      expect(0.to(-0, 3), equals([0]));
      expect(2.to(-2, 2), equals([2, 0, -2]));
      expect((-3).to(3, 1), equals([-3, -2, -1, 0, 1, 2, 3]));
    });
  });

  group('till() with a default step', () {
    test('positive values', () {
      expect(0.till(2), equals([0, 1]));
      expect(2.till(7), equals([2, 3, 4, 5, 6]));
      expect(9.till(5), equals([9, 8, 7, 6]));
    });
    test('nagative values', () {
      expect(0.till(-2), equals([0, -1]));
      expect((-2).till(-7), equals([-2, -3, -4, -5, -6]));
      expect((-9).till(-5), equals([-9, -8, -7, -6]));
    });
    test('opposite signs values', () {
      expect(3.till(-2), equals([3, 2, 1, 0, -1]));
      expect((-2).till(7), equals([-2, -1, 0, 1, 2, 3, 4, 5, 6]));
      expect(5.till(-4), equals([5, 4, 3, 2, 1, 0, -1, -2, -3]));
    });

    test('same values', () {
      expect(0.till(0), equals([0]));
      expect(5.till(5), equals([5]));
      expect((-7).till(-7), equals([-7]));
    });
    test('oposite values', () {
      expect(0.till(-0), equals([0]));
      expect(2.till(-2), equals([2, 1, 0, -1]));
      expect((-3).till(3), equals([-3, -2, -1, 0, 1, 2]));
    });
  });
  group('till() with a custillm step', () {
    test('positive values', () {
      expect(0.till(2, 2), equals([0]));
      expect(2.till(7, 3), equals([2, 5]));
      expect(9.till(5, 1), equals([9, 8, 7, 6]));
    });
    test('nagative values', () {
      expect(0.till(-2, 2), equals([0]));
      expect((-2).till(-7, 3), equals([-2, -5]));
      expect((-9).till(-5, 1), equals([-9, -8, -7, -6]));
    });
    test('opposite signs values', () {
      expect(3.till(-2, 2), equals([3, 1, -1]));
      expect((-2).till(7, 3), equals([-2, 1, 4]));
      expect(5.till(-4, 5), equals([5, 0]));
    });
    test('same values', () {
      expect(0.till(0, 3), equals([0]));
      expect(5.till(5, 2), equals([5]));
      expect((-7).till(-7, 4), equals([-7]));
    });
    test('oposite values', () {
      expect(0.till(-0, 3), equals([0]));
      expect(2.till(-2, 2), equals([2, 0]));
      expect((-3).till(3, 1), equals([-3, -2, -1, 0, 1, 2]));
    });
  });
  group('[] operator', () {
    test('positive values', () {
      expect(0[2], equals(0.to(2)));
      expect(2[3], equals(2.to(3)));
      expect(9[5], equals(9.to(5)));
    });
    test('nagative values', () {
      expect(0[-2], equals(0.to(-2)));
      expect((-2)[-3], equals((-2).to(-3)));
      expect((-9)[-5], equals((-9).to(-5)));
    });
    test('opposite signs values', () {
      expect(0[-2], equals(0.to(-2)));
      expect((-2)[3], equals((-2).to(3)));
      expect(9[-5], equals(9.to(-5)));
    });
    test('same values', () {
      expect(0[0], equals(0.to(0)));
      expect(3[3], equals(3.to(3)));
      expect((-5)[-5], equals((-5).to(-5)));
    });
    test('oposite values', () {
      expect(0[-0], equals(0.to(-0)));
      expect(3[-3], equals(3.to(-3)));
      expect((-5)[5], equals((-5).to(5)));
    });
  });
}
