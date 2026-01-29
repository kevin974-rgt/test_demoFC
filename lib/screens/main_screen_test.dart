import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/main.dart';

void main() {
  group('looking for input and button existence', () {
    testWidgets('lokking for textfiel and elevatedbutton', (
      WidgetTester tester,
    ) async {
      //arange
      await tester.pumpWidget(
        const MainApp(),
      ); //esto hace referencia a la raiz del proyecto
      //act
      final dniInput = find.byType(
        TextField,
      ); //esta buscando el elemento TextField
      //assert
      expect(
        dniInput,
        findsOneWidget,
      ); //Esta buscando al menos uno (findsOneWidget)
    });
    testWidgets('validating label submit button', (WidgetTester tester) async {
      //arange
      await tester.pumpWidget(const MainApp());
      //act
      final dniInput = find.text('Ingresar'); //esta buscando el texto
      //assert
      expect(dniInput, findsOneWidget);
    });
  });
  group('validating text controller input', () {
    testWidgets('initial input should be empty', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: MainApp()));
      final dniInput = find.byType(TextField);
      expect(tester.widget(dniInput), '');
    });
  });
}
