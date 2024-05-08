import 'package:flutter/material.dart';

import '../helper/provider.dart';
import '../managers/counter_manager.dart';

class FabCustom extends StatelessWidget {
  const FabCustom({super.key});

  @override
  Widget build(BuildContext context) {
    int _counter = 0;
    CounterManager manager = Provider.of(context)?.fetch(CounterManager);
    return FloatingActionButton(
      onPressed: () {
        manager.inCount.add(_counter++);
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
