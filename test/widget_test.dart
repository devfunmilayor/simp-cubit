// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_pattern/ui/cubit/counterCubit/counterEvent.dart';
import 'package:bloc_pattern/ui/cubit/counterCubit/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloc_pattern/main.dart';

void main() {
  // blocTest();
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

// blocTest(
//   'sequence of states',
//   // ignore: prefer_equal_for_default_values
//   build: () => CounterCubit(),
//   act: (bloc) => bloc
//   ..initialize()
//     ..increment()
//       ..decrement(),

//   expect:[

//      const CounterCubitIncrease(action: 'Increase ' , count: 0),
//        const CounterCubitIncrease(action: 'Increase ' , count: 2),
//          const CounterCubitDecrease(action: 'decrease ' , count: 1),
//   ],
// );

blocTest() {}
