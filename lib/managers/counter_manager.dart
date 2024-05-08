import 'dart:async';

import 'package:rxdart/rxdart.dart';

class CounterManager {
  final _counter = BehaviorSubject<int>.seeded(0);

  Sink<int> get inCount => _counter.sink;

  Stream<int> get counter$ => _counter.stream;
}
