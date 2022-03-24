import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_modular_test/main.dart';
import 'package:modular_test/modular_test.dart';

void main() {
  testWidgets('should instantiate', (WidgetTester tester) async {
    initModule(AppModule());
    const Counter counter = Counter();
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Center(
          child: counter,
        ),
      ),
    ));
    expect(find.byType(Counter), findsOneWidget);
  });
}
