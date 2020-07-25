import 'package:mockito_ext/src/order_return.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito_ext/src/util/func_def.dart';

///按照顺序返回结果
void mockOrderReturn0<R>(Func0<R> call, List<R> data) {
  final order = OrderReturn<R>(data: data);
  when(call()).thenAnswer((_) {
    return order.call();
  });
}

void mockOrderReturn1<T1, R>(Func1<T1, R> call, List<R> data) {
  final order = OrderReturn<R>(data: data);
  when(call()).thenAnswer((_) {
    return order.call();
  });
}

void mockOrderReturn2<T1, T2, R>(Func2<T1, T2, R> call, List<R> data) {
  final order = OrderReturn<R>(data: data);
  when(call()).thenAnswer((_) {
    return order.call();
  });
}