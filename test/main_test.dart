import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/services/dni_service.dart';
import 'package:test_demo/widgets/input_witget.dart';

void main() {
  group('validations of input DNI', () {
    test('validate DNI', () {
      // arrange
      final dniService = DniService('1005263411');

      // act
      final result = dniService.getDNIisValid(dniService.getDni());

      //Debug code path province name
      if (result != null) {
        print('Provincia válida: $result');
      } else {
        print('DNI inválido');
      }

      final expectedProvince = dniService
          .provinceMap[int.parse(dniService.getDni().substring(0, 2))];

      // assert
      expect(result, expectedProvince);
    });
  });
  group('validations of UI', () {
    testWidgets('added dni', (WidgetTester tester) async {
      // arrange
      final input = find.byKey(const Key('dniInput'));
      await tester.pumpWidget(MaterialApp(home: InputWitget()));
      // act
      await tester.enterText(input, '1005263411');
      await tester.pump();
      // assert
      expect(find.text('1005263411'), findsOneWidget);
    });
  });
}
