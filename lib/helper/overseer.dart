import 'package:emailapp/managers/counter_manager.dart';

class Overseer {
  Map<dynamic, dynamic> repository = {};

  Overseer() {
    register(CounterManager, CounterManager());
  }

  register(name, object) {
    repository[name] = object;
  }

  fetch(name) {
    return repository[name];
  }
}
