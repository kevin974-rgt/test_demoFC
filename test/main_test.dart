import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/services/dni_service.dart';

void main() {
  group('validations of input <DNI>', () {
    test('validate the 3rd character is less than 6', () {
      // arrange
      final dniService = DniService('1002003001');
      // act
      final result = dniService.isThirdCharacterLessThanSix(
        dniService.getDni(),
      );
      // assert
      expect(result, true);
    });
  });
}
