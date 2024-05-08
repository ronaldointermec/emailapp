import 'package:emailapp/helper/provider.dart';
import 'package:emailapp/helper/overseer.dart';
import 'package:emailapp/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      Provider(
        key: UniqueKey(),
        data: Overseer(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
