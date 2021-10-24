// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';

class ListContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[300],
        body: Column(children: [
          Expanded(child: SizedBox()),
          Center(
              child: Stack(
            alignment: AlignmentDirectional.center,
            children: [_rombo(), _circulo(), _texto()],
          )),
          Expanded(child: SizedBox()),
          Text('Actividad No. 1',
              style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ]));
  }

  Widget _rombo() {
    return Transform.rotate(
      angle: 150.0,
      child: Container(
        alignment: Alignment(0.5, 0.5),
        padding: EdgeInsets.all(100),
        height: 270,
        width: 270,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ]),
      ),
      // ignore: dead_code
    );
  }

  Widget _circulo() {
    return Container(
      padding: EdgeInsets.all(100),
      height: 240,
      width: 240,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(130),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
                color: Colors.black45,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ]),
    );
  }

  Widget _texto() {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text('Ruiz Aguilar Eduardo',
            style: TextStyle(
              fontSize: 23.0,
              color: Colors.black,
            )),
        Text('\nGonzalez Pacheco \n Leonardo Alonso',
            style: TextStyle(fontSize: 23.0, color: Colors.black))
      ],
    );
  }
}
