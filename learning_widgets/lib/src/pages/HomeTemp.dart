// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = {
    'Uno': "Opcion 1",
    'Dos': "Opcion 2",
    'Tres': "Opcion 3",
    'Cuatro': "Opcion 4",
    'Cinco': "Opcion 5",
    'Seis': "Opcion 6",
    'Siete': "Opcion 7",
    'Ocho': "Opcion 8",
    'Nueve': "Opcion 9",
    'Diez': "Opcion 10"
  };

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

    for (final opt in options.entries) {
      final key = opt.key;
      final value = opt.value;
      final tempWidget = ListTile(
        title: Text(key),
        subtitle: Text(value),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      myList
        ..add(tempWidget)
        ..add(Divider(
            height: 2.0, color: Colors.black)); // .. operador cascada en Dart
    }

    return myList;
  }
}
