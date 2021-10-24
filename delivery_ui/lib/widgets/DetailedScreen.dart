// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:delivery_ui/main.dart';

class DetailedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25)),
                Icon(Icons.menu, size: 30)
              ],
            )
          ],
        ),
      ),
    );
  }
}
