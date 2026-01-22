import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/services/dni_service.dart';

void main() {
  group('validations of input <DNI>', () {
    test('validate the 3rd character is less than 6 and show province', () {
      // arrange
      final dniService = DniService('1205263411');

      // act
      final result = dniService.getProvinciaIfThirdCharLessThanSix(
        dniService.getDni(),
      );
      if (result != null) {
        print('Provincia válida: $result');
      } else {
        print('DNI inválido');
      }

      // Espera que sea la provincia correspondiente al código 17
      final expectedProvince = dniService
          .provinceMap[int.parse(dniService.getDni().substring(0, 2))];

      // assert
      expect(result, expectedProvince);
    });
  });
}
