import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/main.dart';

void main() {
  group('looking for input and button existence', () {
    testWidgets('looking for textformfield and elevatedbutton',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MainApp());

      final dniInput = find.byType(TextFormField);
      final button = find.byType(ElevatedButton);

      expect(dniInput, findsOneWidget);
      expect(button, findsOneWidget);
    });

    testWidgets('validating label submit button',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MainApp());

      final buttonText = find.text('Ingresar');
      expect(buttonText, findsOneWidget);
    });
  });

  group('validating text controller input', () {
    testWidgets('initial input should be empty',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MainApp());

      final dniInput = find.byType(TextFormField);
      final textField =
          tester.widget<TextFormField>(dniInput);

      expect(textField.controller!.text, isEmpty);
    });
  });
}
