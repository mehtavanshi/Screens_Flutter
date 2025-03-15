import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/screen_1.dart';
import 'package:screen/screen_3.dart';
import 'package:screen/see_all_food.dart';
import 'package:screen/see_all_shoping.dart';

class Screen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      ),
    );
  }
}

class PizzaItem {
  final String imageUrl;
  final String name;
  final int points;

  PizzaItem({
    required this.imageUrl,
    required this.name,
    required this.points,
  });
}

class Shopping {
  final String SimageUrl;
  final String Sname;
  final int Spoints;

  Shopping({
    required this.SimageUrl,
    required this.Sname,
    required this.Spoints,
  });
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<PizzaItem> pizzaItems = [
    PizzaItem(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRalXZfGaV6o80B8NxorYbcRsTEjLKikVx7WtTOFcbT1g&s",
      name: "cake",
      points: 2400,
    ),
    PizzaItem(
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/classic-cheese-pizza-recipe-2-64429a0cb408b.jpg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*",
      name: "pizza",
      points: 3000,
    ),
    PizzaItem(
      imageUrl:
          "https://www.foodiesfeed.com/wp-content/uploads/2023/04/strawberry-milk-splash.jpg",
      name: "Ice-cream",
      points: 1000,
    ),
    PizzaItem(
      imageUrl:
          "https://images.unsplash.com/photo-1551024601-bec78aea704b?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVsaWNpb3VzJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D",
      name: "Donate",
      points: 2000,
    ),
    // Add more pizza items as needed
  ];

  List<Shopping> shoppingItems = [
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61bZVicZBzL._SX679_.jpg",
      Sname: "Key-Chain",
      Spoints: 500,
    ),
    Shopping(
      SimageUrl:
          "https://www.alamodelabel.in/cdn/shop/files/2D796CDB-CED1-4828-A4B7-F94536DAE86F_160x.jpg?v=1699521098",
      Sname: "cake",
      Spoints: 2400,
    ),
    Shopping(
      SimageUrl:
          "https://5.imimg.com/data5/ECOM/Default/2023/7/328823275/KA/HS/UV/153114382/s73d7fd3f9854475eb1f4a2362b9d245c6-a3c99fdf-a316-46a2-856c-936683913eaa-500x500.jpg",
      Sname: "cake",
      Spoints: 2400,
    ),
    // Add more Shopping items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.redAccent,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Expanded(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.network(
                                // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRalXZfGaV6o80B8NxorYbcRsTEjLKikVx7WtTOFcbT1g&s",
                                "https://files.123freevectors.com/wp-content/original/131686-abstract-red-polygon-pattern-background-vector-art.jpg",
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Screen_1()),
                                              );
                                            },
                                            child: Icon(
                                              Icons.arrow_back,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Container(),
                                        ),
                                        Expanded(
                                          child: Container(
                                            // color: Colors.black,
                                            child: Icon(
                                              Icons.recycling_outlined,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            // color: Colors.purple[50],
                                            child: Icon(
                                              Icons.favorite,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Screen_3()),
                                              );
                                            },
                                            child: Icon(
                                              Icons.arrow_forward,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  // color: Colors.orange[50],
                                                  alignment: Alignment.bottomLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(10.0,0,0,0),
                                                    child: Text(
                                                      "You've got,",
                                                      style: TextStyle(
                                                        fontSize: MediaQuery.of(context).size.height*0.040,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      alignment: Alignment.topLeft,
                                                      // color: Colors.yellow[50],
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(9,0,0,0),
                                                        child: Text(
                                                          "5985",
                                                          style: TextStyle(
                                                            fontSize: MediaQuery.of(context).size.height*0.070,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                            color:
                                                                Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // color: Colors.orange[50],
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(10.0,14,0,0),
                                                        child: Text(
                                                          "reward \npoints",
                                                          style: TextStyle(
                                                            fontSize: MediaQuery.of(context).size.height*0.025,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1.0,
                                                      ),
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Center(
                                                          child: Container(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .wallet_giftcard,
                                                                size: MediaQuery.of(context).size.width * 0.08,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                            child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(3.0),
                                                          child: Text(
                                                            "Redeem",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: 2.0,
                                                        color: Colors.white70,
                                                      ),
                                                      color: Colors.yellow[700],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Center(
                                                          child: Container(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .fromLTRB(2.0,0,5.0,0),
                                                              child: Icon(
                                                                Icons
                                                                    .handshake_rounded,
                                                                size: MediaQuery.of(context).size.width * 0.08,
                                                                color: Colors.white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Expanded(
                                                            child: Container(
                                                                child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(0.0),
                                                              child: Text(
                                                                "Donate",
                                                                style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      Colors.white,
                                                                ),
                                                              ),
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,0,0,0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Food & Drinks",
                                        style: TextStyle(
                                            fontSize:
                                                MediaQuery.of(context).size.height *
                                                    0.028,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child:GestureDetector(
                                        onTap: () {
                                          // Handle the tap event, you can navigate or perform any other action here
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => See_all_food(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  "See all",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                    fontSize: MediaQuery.of(context).size.height * 0.022,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Icon(
                                                    Icons.arrow_forward_ios_outlined,
                                                    color: Colors.red,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: pizzaItems.length,
                          // Assuming pizzaItems is a List of your items
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *
                                    0.4, // Adjust width as needed
                                decoration: BoxDecoration(


                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Card(
                                  elevation: 5,
                                  shadowColor: Colors.red[600],
                                  color: Colors.red[50],
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20.0),
                                          child: Image.network(
                                            pizzaItems[index].imageUrl,
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  pizzaItems[index].name,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.025,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                        child: Text(
                                          "${pizzaItems[index].points} points",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize:
                                                MediaQuery.of(context).size.height *
                                                    0.012,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Expanded(
                                              child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Shopping & Lifestyle",
                                              style: TextStyle(
                                                  fontSize: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.02,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => See_all_shoping(),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 3,
                                                    child: Container(
                                                      alignment: Alignment.centerRight,
                                                      child: Text(
                                                        "See all",
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.black,
                                                          fontSize: MediaQuery.of(context).size.height * 0.022,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Container(
                                                        alignment: Alignment.centerLeft,
                                                        child: Icon(
                                                          Icons.arrow_forward_ios_outlined,
                                                          color: Colors.red,
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: shoppingItems.length,
                          // Assuming pizzaItems is a List of your items
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *
                                    0.4, // Adjust width as needed
                                decoration: BoxDecoration(

                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Card(
                                  elevation: 5,
                                  shadowColor: Colors.purple[400],
                                  color: Colors.purple[50],
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20.0),
                                          child: Image.network(
                                            shoppingItems[index].SimageUrl,
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  shoppingItems[index].Sname,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.025,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                        child: Text(
                                          "${shoppingItems[index].Spoints} points",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize:
                                                MediaQuery.of(context).size.height *
                                                    0.012,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 15,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                color: Colors.black12,
                                borderRadius:
                                BorderRadius.circular(20.0),
                              ),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                                padding:
                                                const EdgeInsets
                                                    .all(2.0),
                                                child: Icon(
                                                  Icons.auto_awesome,
                                                  size: 30,
                                                  color: Colors.amber,
                                                )),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (
                                                          context) =>
                                                          Screen_1()),
                                                );
                                              },
                                              child: Icon(
                                                Icons.looks_one_outlined,
                                                size: 30,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (
                                                          context) =>
                                                          Screen_2()),
                                                );
                                              },
                                              child: Icon(
                                                Icons.looks_two_sharp,
                                                size: 30,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (
                                                          context) =>
                                                          Screen_3()),
                                                );
                                              },
                                              child: Icon(
                                                Icons.looks_3_outlined,
                                                size: 30,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
