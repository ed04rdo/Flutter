// ignore_for_file: file_names

import 'package:ejercicio2/constants.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final int price;
  final String description;
  final VoidCallback press;

  const MyCard({
    Key? key,
    required this.title,
    required this.subtitle,
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
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(0.06)),
              ),
            ),
            Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15)),
            ),
            Positioned(
              top: 10,
              left: 15,
              child: Container(
                height: 151,
                width: 151,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
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
                      Text(
                        subtitle,
                        style: TextStyle(color: kTextColor.withOpacity(0.4)),
                      ),
                      SizedBox(height: 15),
                      Text(
                        description,
                        maxLines: 5,
                        style: TextStyle(color: kTextColor.withOpacity(0.7)),
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
