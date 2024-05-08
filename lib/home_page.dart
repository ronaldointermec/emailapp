import 'package:emailapp/helper/Observer.dart';
import 'package:emailapp/helper/provider.dart';
import 'package:emailapp/widget/fab_custom.dart';
import 'package:flutter/material.dart';
import 'managers/counter_manager.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    CounterManager manager = Provider.of(context)?.fetch(CounterManager);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter'),
      ),
      body: Observer<int>(
        stream: manager.counter$,
        onSuccess: (context, data) => Center(child: Text("Counter: $data")),
        OnWaiting: (context) => const LinearProgressIndicator(),
      ),
      floatingActionButton: const FabCustom(),
    );
  }
}
