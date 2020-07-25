import 'package:mockito_ext/src/order_return_async.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito_ext/src/util/func_def.dart';

void mockCallAsync0<R>(Func0<Future<R>> call, List<R> data, {double delaySecond = 0.1}) {
  final order = OrderReturnAsync<R>(data: data, second: delaySecond);
  when(call()).thenAnswer((_) {
    return order.call();
  });
}

void mockCallAsync1<T1, R>(Func1<T1, Future<R>> call, List<R> data,
    {double delaySecond = 0.1}) {
  final order = OrderReturnAsync<R>(data: data, second: delaySecond);
  when(call()).thenAnswer((_) {
    return order.call();
  });
}

void mockCallAsync2<T1, T2, R>(Func2<T1, T2, Future<R>> call, List<R> data,
    {double delaySecond = 0.1}) {
  final order = OrderReturnAsync<R>(data: data, second: delaySecond);
  when(call()).thenAnswer((_) {
    return order.call();
  });
}
