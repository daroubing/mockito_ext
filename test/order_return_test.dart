import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';




class A {
  int getNum() {
    return 1;
  }
}
class MockA extends Mock implements A {}
void main() {
  group('展示测试用法', () {
    test('', () {

    });
  });
}