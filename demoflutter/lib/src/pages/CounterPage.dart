// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _myStyle = const TextStyle(fontSize: 25, fontStyle: FontStyle.italic);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: _myStyle),
            Text('$_contador', style: _myStyle),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: () => _reset(),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => _sub(),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => _add(),
        )
      ],
    );
  }

  void _reset() {
    setState(() => _contador = 0);
  }

  void _sub() {
    setState(() => _contador--);
  }

  void _add() {
    setState(() => _contador++);
  }
}
