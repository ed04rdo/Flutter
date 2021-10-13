// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve',
    'Diez'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: _createItems()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> myList = <Widget>[];

    for (String opt in options) {
      final tempWidget = ListTile(title: Text('$opt'));
      myList
        ..add(tempWidget)
        ..add(Divider(
            height: 2.0, color: Colors.black)); // .. operador cascada en Dart
    }

    return myList;
  }
}
