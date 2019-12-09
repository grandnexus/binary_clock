import 'package:intl/intl.dart' show DateFormat;

/// Utility class to access values as binary integers
class BinaryTime {
  List<String> binaryIntegers;

  BinaryTime() {
    // Get the current time.
    final DateTime now = DateTime.now();
    // Get the current time in String without ':'.
    final String hhmmss = DateFormat('Hms').format(now).replaceAll(':', '');

    // Split the String current time into parts.
    binaryIntegers = hhmmss
        .split('')
        .map((str) => int.parse(str).toRadixString(2).padLeft(4, '0'))
        .toList();
  }

  get hourTens => binaryIntegers[0]; // Get hour tens digit in binary
  get hourOnes => binaryIntegers[1]; // Get hour ones digit in binary
  get minuteTens => binaryIntegers[2]; // Get minute tens digit in binary
  get minuteOnes => binaryIntegers[3]; // Get minute ones digit in binary
  get secondTens => binaryIntegers[4]; // Get second tens digit in binary
  get secondOnes => binaryIntegers[5]; // Get second ones digit in binary
}
