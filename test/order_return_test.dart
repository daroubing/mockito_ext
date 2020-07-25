import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito_ext/mockito_ext.dart';


class A {
  int getNum() {
    return 1;
  }
}

class MockA extends Mock implements A {}

void main() {
  group('展示测试用法', () {
    test('使用Wrap', () {
      final mockA = MockA();

      mockCall0(mockA.getNum, [1, 2, 4]);

      expect(mockA.getNum(), 1);
      expect(mockA.getNum(), 2);
      expect(mockA.getNum(), 4);
      expect(mockA.getNum(), 4);
    });
  });
}