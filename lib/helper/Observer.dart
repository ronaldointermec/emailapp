import 'package:flutter/material.dart';
import 'dart:async';

class Observer<T> extends StatelessWidget {
  final Stream<T> stream;
  final Function onSuccess;
  final Function? onError;
  final Function? OnWaiting;

  const Observer(
      {super.key,
      this.onError,
      required this.onSuccess,
      required this.stream,
      this.OnWaiting});

  Function get _defaultOnWaiting => (context) => const Center(
        child: CircularProgressIndicator(),
      );

  Function get _defaultOnErro => (context, error) => Center(
        child: Text(error),
      );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, AsyncSnapshot<T> snapshot) {
        if (snapshot.hasError) {
          return onError != null
              ? onError!(context, snapshot.error)
              : _defaultOnWaiting(context, snapshot.error);
        }
        if (snapshot.hasData) {
          T data = snapshot.data as T;
          return onSuccess(context, data);
        } else {
          return OnWaiting != null
              ? OnWaiting!(context)
              : _defaultOnWaiting(context);
        }
      },
    );
  }
}
