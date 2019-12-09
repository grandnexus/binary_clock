import 'package:flutter_test/flutter_test.dart';

import 'package:binary_clock/binary_time.dart';

void main() {
  group('[Utils] Binary Time', () {
    final BinaryTime now = BinaryTime();
    test('[Value] hourTens in binary', () {
      expect(now.hourTens, now.binaryIntegers[0]);
      expect(now.hourTens.runtimeType, equals(String));
    });
    test('[Value] hourOnes in binary', () {
      expect(now.hourOnes, now.binaryIntegers[1]);
      expect(now.hourOnes.runtimeType, equals(String));
    });
    test('[Value] minuteTens in binary', () {
      expect(now.minuteTens, now.binaryIntegers[2]);
      expect(now.minuteTens.runtimeType, equals(String));
    });
    test('[Value] minuteOnes in binary', () {
      expect(now.minuteOnes, now.binaryIntegers[3]);
      expect(now.minuteOnes.runtimeType, equals(String));
    });
    test('[Value] secondTens in binary', () {
      expect(now.secondTens, now.binaryIntegers[4]);
      expect(now.secondTens.runtimeType, equals(String));
    });
    test('[Value] secondOnes in binary', () {
      expect(now.secondOnes, now.binaryIntegers[5]);
      expect(now.secondOnes.runtimeType, equals(String));
    });
  });
}
