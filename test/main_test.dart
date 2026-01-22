import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/services/dni_service.dart';

void main() {
  group('validations of input <DNI>', () {
    test('validate the input has 10 characters', () {
      //arrange
      final dniService = DniService('');
      //fact
      final lenght =dniService.dnilenght();
      //assert
      expect(lenght, 10);
    });
  });
}
