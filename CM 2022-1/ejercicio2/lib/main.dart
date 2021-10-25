// ignore_for_file: prefer_const_constructors

import 'package:ejercicio2/DetailedScreen.dart';
import 'package:ejercicio2/constants.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio2/widgets/MyCard.dart';
import 'package:ejercicio2/widgets/CategoryTitle.dart';

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
          headline5: TextStyle(
              fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 23),
          button: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(
              fontWeight: FontWeight.bold, color: kBlendingGreen, fontSize: 18),
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
        appBar: AppBar(
          toolbarHeight: 130,
          backgroundColor: Colors.grey[200],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Icon(
                      Icons.location_on,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Salada\&Dulce",
                            style: Theme.of(context).textTheme.headline5),
                        Text("Norte 74 #6003",
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 90),
                    child: Icon(
                      Icons.refresh,
                      size: 30,
                      color: kPrimaryColor,
                    ),
                  )
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                  ),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.grey[400],
                      ),
                      Text(
                        "  What would you like to eat?",
                        style: TextStyle(color: Colors.grey[400]),
                      )
                    ],
                  )),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                        title: "Ensalada de pechuga rellena",
                        image: "assets/images/ensalada1.png",
                        description:
                            "Rica ensalada acompañada de verdura cruda, cocida, y pechuga rellena de jamón y queso");
                  }));
                },
                title: "Ensalada de pechuga rellena",
                image: "assets/images/ensalada1.png",
                price: 80,
                description:
                    "Rica ensalada acompañada de verdura cruda, cocida, y pechuga rellena de jamón y queso",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Ensalada oaxaqueña",
                      image: "assets/images/ensalada1.png",
                      description:
                          "Rica ensalada acompañada de bisteck, queso oaxaca y aguacate",
                    );
                  }));
                },
                title: "Ensalada oaxaqueña",
                image: "assets/images/ensalada1.png",
                price: 80,
                description:
                    "Rica ensalada acompañada de bisteck, queso oaxaca y aguacate",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Ensalada de camarón coctelero",
                      image: "assets/images/ensalada1.png",
                      description:
                          "Rica ensalada acompañada con camarón coctelero",
                    );
                  }));
                },
                title: "Ensalada de camarón coctelero",
                image: "assets/images/ensalada1.png",
                price: 80,
                description: "Rica ensalada acompañada con camarón coctelero",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Ensalada pechuga con duraznos",
                      image: "assets/images/ensalada1.png",
                      description:
                          "Rica ensalada acompañada de pechuga rellena y duraznos en almíbar",
                    );
                  }));
                },
                title: "Ensalada pechuga con duraznos",
                image: "assets/images/ensalada1.png",
                price: 80,
                description:
                    "Rica ensalada acompañada de pechuga rellena y duraznos en almíbar",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Ensalada de pechuga asada",
                      image: "assets/images/ensalada2.png",
                      description: "Rica ensalada acompañada pechuga asada",
                    );
                  }));
                },
                title: "Ensalada de pechuga asada",
                image: "assets/images/ensalada2.png",
                price: 80,
                description: "Rica ensalada acompañada pechuga asada",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Baguette de lomo",
                      image: "assets/images/baguette.png",
                      description:
                          "Rica Baguette de lomo de cerdo con dos guarniciones",
                    );
                  }));
                },
                title: "Baguette de lomo",
                image: "assets/images/baguette.png",
                price: 60,
                description:
                    "Rica Baguette de lomo de cerdo con dos guarniciones",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Baguette de bisteck",
                      image: "assets/images/baguette2.png",
                      description:
                          "Rica Baguette de bisteck acompañada con dos guarniciones",
                    );
                  }));
                },
                title: "Baguette de bisteck",
                image: "assets/images/baguette2.png",
                price: 60,
                description:
                    "Rica Baguette de bisteck acompañada con dos guarniciones",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Baguette de jamón",
                      image: "assets/images/baguette3.png",
                      description:
                          "Rica Baguette de jamón de pavo con dos guarniciones",
                    );
                  }));
                },
                title: "Baguette de jamón",
                image: "assets/images/baguette3.png",
                price: 60,
                description:
                    "Rica Baguette de jamón de pavo con dos guarniciones",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Baguette de pechuga rellena",
                      image: "assets/images/baguette4.png",
                      description:
                          "Rica Baguette de pechuga rellena de jamón y queso oaxaca acompañada con dos guarniciones",
                    );
                  }));
                },
                title: "Baguette de pechuga rellena",
                image: "assets/images/baguette4.png",
                price: 60,
                description:
                    "Rica Baguette de pechuga rellena de jamón y queso oaxaca acompañada con dos guarniciones",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Hamburguesa de res",
                      image: "assets/images/hamburguesa.png",
                      description:
                          "Rica hamburguesa de res acompañada con papas a la francesa",
                    );
                  }));
                },
                title: "Hamburguesa de res",
                image: "assets/images/hamburguesa.png",
                price: 100,
                description:
                    "Rica hamburguesa de res acompañada con papas a la francesa",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Hamburguesa de pollo",
                      image: "assets/images/hamburguesa.png",
                      description:
                          "Rica hamburguesa de pollo acompañada con papas a la francesa",
                    );
                  }));
                },
                title: "Hamburguesa de pollo",
                image: "assets/images/hamburguesa.png",
                price: 100,
                description:
                    "Rica hamburguesa de pollo acompañada con papas a la francesa",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Cuernito de jamón de pavo",
                      image: "assets/images/baguette5.png",
                      description:
                          "Rico cuernito de jamón de pavo acompañado con dos guarniciones",
                    );
                  }));
                },
                title: "Cuernito de jamón de pavo",
                image: "assets/images/baguette5.png",
                price: 70,
                description:
                    "Rico cuernito de jamón de pavo acompañado con dos guarniciones",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Cuernito de bisteck",
                      image: "assets/images/burrito.png",
                      description:
                          "Rico cuernito de bisteck acompañado con dos guarniciones",
                    );
                  }));
                },
                title: "Cuernito de bisteck",
                image: "assets/images/burrito.png",
                price: 70,
                description:
                    "Rico cuernito de bisteck acompañado con dos guarniciones",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Enchiladas de mole",
                      image: "assets/images/mole.png",
                      description:
                          "Ricas enchiladas de mole acompañadas con dos guarniciones",
                    );
                  }));
                },
                title: "Enchiladas de mole",
                image: "assets/images/mole.png",
                price: 110,
                description:
                    "Ricas enchiladas de mole acompañadas con dos guarniciones",
              ),
              MyCard(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailedScreen(
                      title: "Nuggets de pollo",
                      image: "assets/images/nuggets.png",
                      description:
                          "8 piezas de nuggets de pollo acompañadas de dos guarniciones",
                    );
                  }));
                },
                title: "Nuggets de pollo",
                image: "assets/images/nuggets.png",
                price: 80,
                description:
                    "8 piezas de nuggets de pollo acompañadas de dos guarniciones",
              ),
            ],
          ),
        ));
  }
}
