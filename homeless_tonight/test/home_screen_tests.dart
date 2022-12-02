

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:homeless_tonight/homeless.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Widget Renders Correctly', (tester) async {

    // from https://stackoverflow.com/questions/53706569/how-to-test-flutter-widgets-on-different-screen-sizes
    tester.binding.window.physicalSizeTestValue = const Size(480, 800);

    await tester.pumpWidget(
      const MaterialApp(
        home: HomelessMainScreen()
      )
    );

    // resets the screen to its original size after the test end
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
}