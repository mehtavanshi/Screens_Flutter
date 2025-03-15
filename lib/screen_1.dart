import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/main.dart';
import 'package:screen/screen_2.dart';
import 'package:screen/screen_3.dart';
import 'package:screen/see_all_food.dart';

class Screen_1 extends StatefulWidget {
  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyApp(),
      ),
    );
  }
}

class PizzaItem {
  final String imageUrl;
  final String name;

  PizzaItem({
    required this.imageUrl,
    required this.name,
  });
}

class IconItem {
  final String imageUrl;
  final String name;

  IconItem({
    required this.imageUrl,
    required this.name,
  });
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _textController = TextEditingController();

  IconData currentIcon = Icons.favorite_border_outlined;

  void changeIcon() {
    setState(() {
      if (currentIcon == Icons.favorite_border_outlined) {
        currentIcon = Icons.favorite;
      } else {
        currentIcon = Icons.favorite_border_outlined;
      }
    });
  }

  List<IconItem> iconItems = [
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/87/87390.png",
      name: "Insta",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/1051/1051377.png",
      name: "Git",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/1051/1051384.png",
      name: "LiIn",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/1051/1051360.png",
      name: "fa_book",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/1051/1051362.png",
      name: "wi-fi",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/87/87384.png",
      name: "pi",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/684/684808.png",
      name: "Message",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/684/684834.png",
      name: "Adress",
    ),
    IconItem(
      imageUrl: "https://cdn-icons-png.flaticon.com/128/684/684840.png",
      name: "Contact",
    ),
  ];
  List<PizzaItem> pizzaItems = [
    PizzaItem(
      imageUrl: "https://cdn-icons-gif.flaticon.com/6172/6172527.gif",
      name: "cake",
    ),
    PizzaItem(
      imageUrl: "https://cdn-icons-gif.flaticon.com/6454/6454106.gif",
      name: "pizza",
    ),
    PizzaItem(
      imageUrl: "https://cdn-icons-gif.flaticon.com/6455/6455041.gif",
      name: "Ice-cream",
    ),
    PizzaItem(
      imageUrl: "https://cdn-icons-gif.flaticon.com/6416/6416394.gif",
      name: "Donate",
    ),
    PizzaItem(
      imageUrl: "https://cdn-icons-gif.flaticon.com/6172/6172517.gif",
      name: "Pizza",
    ),
    PizzaItem(
      imageUrl: "https://cdn-icons-gif.flaticon.com/6416/6416387.gif",
      name: "Coffee",
    ),
    PizzaItem(
      imageUrl: "https://cdn-icons-gif.flaticon.com/6844/6844338.gif",
      name: "Cup-Cake",
    ),
    // Add more pizza items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        child: Expanded(
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu.jpg/640px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu.jpg",
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.ac_unit_outlined,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://cdn-icons-png.flaticon.com/512/535/535239.png",
                                          height: 30,
                                          width: 30,
                                          fit: BoxFit.cover,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            changeIcon();
                                          },
                                          child: Icon(
                                            currentIcon,
                                            color: Colors.pinkAccent,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Screen_2()),
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
                          ),
                          Expanded(
                            flex: 7,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(50.0, 0, 50, 0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Stuck somewhere?\nGet Help now!",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.035,
                                            fontWeight: FontWeight.w700,
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
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(50.0, 0, 50, 0),
                                    child: TextField(
                                      controller: _textController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        labelText: 'Enter your text',
                                        labelStyle: TextStyle(
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        hoverColor: Colors.blue[100],
                                        focusColor: Colors.black,
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.search,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Quick Links',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.060,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
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
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.020,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                // Navigate to the desired screen when the forward arrow icon is tapped
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        See_all_food(),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  color: Colors.red,
                                                  size: 20,
                                                ),
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
      
                      SizedBox(
                        height: 15,
                      ),
                      Container(

                        height: MediaQuery.of(context).size.height * 0.11,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: pizzaItems.length,
                          // Assuming pizzaItems is a List of your items
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.lightBlueAccent,
                              elevation: 5,
                              shadowColor: Colors.blue[200],
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                                child: Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width * 0.25,
                                  // Adjust width as needed
                                    
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(
                                  //     color: Colors.black,
                                  //     width: 2.0,
                                  //   ),
                                  //   color: Colors.white,
                                  //   borderRadius: BorderRadius.circular(20.0),
                                  // ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.network(
                                          pizzaItems[index].imageUrl,
                                          width: MediaQuery.of(context).size.width *
                                              0.08,
                                          height: MediaQuery.of(context).size.height * 0.04,
                                          fit: BoxFit.cover,

                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Center(
                                                child: Text(
                                                  pizzaItems[index].name,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.022,
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
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        MediaQuery.of(context).size.width * 0.060,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
      
                      Expanded(
                        flex: 6,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Expanded(
                              child: Container(
                                // height:200,
                                margin:EdgeInsets.only(top: 0),
      
                                child: ListView.builder(
                                  itemCount: (iconItems.length / 3).ceil(),
                                  itemBuilder: (context, rowIndex) {
                                    return Container(
                                      height: 100,
                                      width: 150,
                                      child: Row(
                                        children: [
                                          for (var i = rowIndex * 3;
                                              i < (rowIndex + 1) * 3;
                                              i++)
                                            if (i < iconItems.length)
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Card(
                                                    elevation: 6,
                                                    shadowColor: Colors.blue[100],
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    color: Colors.blue[50],
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          flex: 3,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .fromLTRB(
                                                                    0, 10, 0, 0),
                                                            child: Image.network(
                                                              iconItems[i]
                                                                  .imageUrl,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.05,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.07,
                                                              color:
                                                                  Colors.black87,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .fromLTRB(
                                                                    0, 0, 0, 2),
                                                            child: Text(
                                                              iconItems[i].name,
                                                              style: TextStyle(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.025,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
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
                                          color: Colors.white70,
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
                                                            color: Colors.blue,
                                                          )),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Screen_1()),
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons.looks_one,
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
                                                                builder:
                                                                    (context) =>
                                                                        Screen_2()),
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons
                                                              .looks_two_outlined,
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
                                                                builder:
                                                                    (context) =>
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
      
                      // Expanded(child: Container()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
