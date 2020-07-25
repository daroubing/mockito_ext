import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'order_return_test.dart';

void main() {
  group('使用mockito', () {
    test('模拟返回,确认调用', () {
      final mock = MockA();

      when(mock.getNum()).thenReturn(2);
      expect(mock.getNum(), 2);

      verify(mock.getNum());
    });

    test('设置多次返回不同值', () {
      final mock = MockA();
      when(mock.getNum()).thenReturn(1);

      expect(mock.getNum(), 1);
      when(mock.getNum()).thenReturn(2);

      expect(mock.getNum(), 2);

      when(mock.getNum()).thenReturn(3);
      expect(mock.getNum(), 3);

      verify(mock.getNum()).called(3);
    });
  });

  test('连续设置返回值,返回最后一个', () {
    final mock = MockA();
    when(mock.getNum()).thenReturn(1);
    when(mock.getNum()).thenReturn(2);
    when(mock.getNum()).thenReturn(3);
    expect(mock.getNum(), 3);
    expect(mock.getNum(), 3);
    expect(mock.getNum(), 3);
  });
}
