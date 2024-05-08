import 'package:flutter/material.dart';
import 'overseer.dart';

class Provider extends InheritedWidget {
  final Overseer data;

  const Provider({Key? key, required this.data, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return false;
  }

  static Overseer? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Provider>()!
        .data;
  }
}
