// ignore_for_file: prefer_const_constructors
import 'package:delivery_ui/constants.dart';
import 'package:delivery_ui/widgets/DetailedScreen.dart';
import 'package:flutter/material.dart';
import 'package:delivery_ui/widgets/MyCard.dart';
import 'package:delivery_ui/widgets/CategoryTitle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery UI',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(
                right: 20,
                top: 50,
              ),
              child: Align(
                  alignment: Alignment.topRight, child: Icon(Icons.menu))),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Título \nSubtítulo",
                style: Theme.of(context).textTheme.headline5),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CategoryTitle(
                  title: "Submenú_1",
                  active: true,
                ),
                CategoryTitle(
                  title: "Submenú_2",
                ),
                CategoryTitle(
                  title: "Submenú_3",
                ),
                CategoryTitle(
                  title: "Submenú_4",
                ),
                CategoryTitle(
                  title: "Submenú_5",
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorderColor),
              ),
              child: Icon(Icons.search)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                MyCard(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailedScreen();
                    }));
                  },
                  title: "Poop",
                  subtitle: "One popular emoji",
                  image: "assets/images/poop.png",
                  price: 10,
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
                MyCard(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailedScreen();
                    }));
                  },
                  title: "Smiley",
                  subtitle: "Second popular emoji",
                  image: "assets/images/smiley.png",
                  price: 20,
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
                MyCard(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailedScreen();
                    }));
                  },
                  title: "Nerd",
                  subtitle: "Third popular emoji",
                  image: "assets/images/nerd.png",
                  price: 30,
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
