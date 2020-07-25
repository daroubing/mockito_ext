import 'package:flutter/foundation.dart';

class OrderReturnAsync<T> {
  final Iterator<T> _iterator;
  final List<T> data;
  T _last;
  final double second;

  OrderReturnAsync({@required this.data, this.second = 0.1}) : _iterator = data.iterator;

  Future<T> call() async {
    await Future.delayed(
        Duration(milliseconds: (second * Duration.millisecondsPerSecond).round()));
    print(DateTime.now());
    if (_iterator.moveNext()) {
      _last = _iterator.current;

      return _last;
    } else
      return _last;
  }
}
