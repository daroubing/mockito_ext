import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito_ext/mockito_ext.dart';

class HttpCall {
  Future<int> request() async {
    return 1;
  }

  int getNum() {
    return 14;
  }
}

class MockHttpCall extends Mock implements HttpCall {}

void main() {
  group('order_return_async_test', () {
    test('使用Http', () {
      final mockA = MockHttpCall();

      mockOrderReturnAsync0(mockA.request, [1, 2, 4], delaySecond: 1);

      //NOTE Kun 2020/7/25 是并发调用,所以1秒多就完成了
      expect(mockA.request(), completion(equals(1)));
      expect(mockA.request(), completion(2));
      expect(mockA.request(), completion(4));
      expect(mockA.request(), completion(4));

      //NOTE Kun 2020/7/25 未设置的,返回null
      //fake抛出异常.
//    expect(mockA.getNum(), 14);
//      final fake  = FakeHttpCall();
//      expect(fake.getNum(), 14);
    });
  });
}
