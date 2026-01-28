import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/main.dart';

void main() {
  group('description', () {
    testWidgets('description', (WidgetTester tester) async {
      //arange
      await tester.pumpWidget(const MainApp());//esto hace referencia a la raiz del proyecto
      //act
      //assert
    });
  });
}
