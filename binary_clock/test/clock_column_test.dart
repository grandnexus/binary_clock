import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:binary_clock/clock_column.dart';

void main() {
  testWidgets('[Widget] ClockColumn', (WidgetTester tester) async {
    // Create key.
    final Key key = Key('clock_column');

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: ClockColumn(
          key: key,
          binaryInteger: '1101',
          title: 'H',
          color: Colors.blue,
          rows: 2,
        ),
      ),
    );

    // Trigger a frame.
    await tester.pump();

    // Create the finders.
    final finderByType = find.byType(ClockColumn);
    final finderByKey = find.byKey(key);

    // Use the `findsOneWidget` matcher provided by flutter_test
    expect(finderByType, findsOneWidget);
    expect(finderByKey, findsOneWidget);

    // Verify that [ClockColumn] contains 1101 and not 1100.
    expect(find.text('1101'), findsOneWidget);
    expect(find.text('1100'), findsNothing);
  });
}
