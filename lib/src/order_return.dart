import 'package:flutter/cupertino.dart';

class OrderReturn<T> {
  final Iterator<T> _iterator;
  final List<T> data;
  T _last;

  OrderReturn({@required this.data}) : _iterator = data.iterator;

  T call() {
    if (_iterator.moveNext()) {
      _last = _iterator.current;

      return _last;
    } else
      return _last;
  }
}
