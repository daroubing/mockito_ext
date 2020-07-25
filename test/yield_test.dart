import 'package:flutter_test/flutter_test.dart';

void main() {
  group('', () {
    Iterable<int> getNum() sync* {
      yield 1;
      yield 2;
    }

    test('使用sync*', () {
      final it = getNum().iterator;

      it.moveNext();
      expect(it.current, 1);
      it.moveNext();
      expect(it.current, 2);
    });
    Iterable<int> getNum2() sync* {
      yield* [1, 2];
    }

    test('使用sync* 和 yield*', () {
      final it = getNum2().iterator;

      it.moveNext();
      expect(it.current, 1);
      it.moveNext();
      expect(it.current, 2);
    });

    Stream<int> getNum3() async* {
      yield 1;
      await Future.delayed(Duration(seconds: 1));
      yield 2;
    }

    test('使用async*', () async {
      await for (final a in getNum3()) {
        print(a);
      }
    });
  });
}
