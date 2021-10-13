// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:learning_widgets/src/pages/HomeTemp.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: HomePageTemp(),
    );
  }
}
