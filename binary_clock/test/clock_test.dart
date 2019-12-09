import 'package:binary_clock/binary_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:binary_clock/clock.dart';

void main() {
  testWidgets('[Widget] Clock', (WidgetTester tester) async {
    // Create key.
    final Key key = Key('clock');

    // Get current time in binary;
    final BinaryTime now = BinaryTime();

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Clock(
          key: key,
        ),
      ),
    );

    // Trigger a frame.
    await tester.pump();

    // Create the finders.
    final finderByType = find.byType(Clock);
    final finderByKey = find.byKey(key);

    // Use the `findsOneWidget` matcher provided by flutter_test
    expect(finderByType, findsOneWidget);
    expect(finderByKey, findsOneWidget);

    // Verify that [Clock] contains [BinaryTime].
    expect(find.text(now.hourTens), findsWidgets);
    expect(find.text(now.hourOnes), findsWidgets);
    expect(find.text(now.minuteTens), findsWidgets);
    expect(find.text(now.minuteOnes), findsWidgets);
    expect(find.text(now.secondTens), findsWidgets);
    expect(find.text(now.secondOnes), findsWidgets);
  });
}
