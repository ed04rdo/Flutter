// ignore_for_file: file_names, prefer_const_constructors

import 'package:ejercicio2/constants.dart';
import 'package:flutter/material.dart';

class MyDetailedCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const MyDetailedCard({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20),
      height: 450,
      width: 350,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: kBlendingGreen.withOpacity(0.2),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 100,
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.3)),
            ),
          ),
          Positioned(
            top: 110,
            left: 11,
            child: Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fitWidth,
                  )),
            ),
          ),
          Positioned(
              bottom: 60,
              left: 95,
              child: Container(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.headline6),
                    SizedBox(height: 15),
                    Text(
                      description,
                      maxLines: 5,
                      style: TextStyle(color: kTextColor, fontSize: 12),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 10,
              left: 10,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: kPrimaryColor,
                child: Text("buy"),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              )),
          Positioned(
              top: 180,
              right: 60,
              child: Row(
                children: [
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                ],
              ))
        ],
      ),
    );
  }
}
