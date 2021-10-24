// ignore_for_file: file_names, prefer_const_constructors

import 'package:ejercicio2/constants.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String image;
  final int price;
  final String description;
  final VoidCallback press;

  const MyCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 15),
        height: 175,
        width: 350,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kBlendingGreen.withOpacity(0.2),
                ),
              ),
            ),
            Positioned(
              left: 20,
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.3)),
              ),
            ),
            Positioned(
              top: 4,
              left: 22,
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
              right: 20,
              top: 80,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
                top: 201,
                left: 40,
                child: Container(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: Theme.of(context).textTheme.headline6),
                      SizedBox(height: 15),
                      Text(
                        description,
                        maxLines: 5,
                        style: TextStyle(color: kTextColor),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
