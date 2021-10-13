// ignore_for_file: use_key_in_widget_constructors, file_names
import 'package:flutter/material.dart';
import 'pages/CounterPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: CounterPage(),
      ),
    );
  }
}
