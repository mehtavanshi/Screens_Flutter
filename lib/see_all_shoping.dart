import 'package:flutter/material.dart';

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

class See_all_shoping extends StatelessWidget {
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
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),
    Shopping(
      SimageUrl: "https://m.media-amazon.com/images/I/61lclViEt4S._SX679_.jpg",
      Sname: "Cloud",
      Spoints: 8000,
    ),

    // Add more Shopping items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping List",
          style: TextStyle(
            color: Colors.purpleAccent,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: (shoppingItems.length / 2).ceil(),
        // Calculate the number of rows
        itemBuilder: (context, rowIndex) {
          // Calculate the start index for this row
          int startIndex = rowIndex * 2;

          // Create a row with two cards
          return Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildPizzaCard(shoppingItems[startIndex]),
                ),
              ),
              SizedBox(width: 3), // Add spacing between cards
              if (startIndex + 1 < shoppingItems.length)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildPizzaCard(shoppingItems[startIndex + 1]),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget buildPizzaCard(Shopping shoppingItems) {
    return Card(
      color: Colors.purple[100],
      shadowColor: Colors.red,
      elevation: 5,
      child: Container(
        height: 150,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  shoppingItems.SimageUrl,
                  width: 500,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        shoppingItems.Sname,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15,color: Colors.pink.shade800,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Text(
                "${shoppingItems.Spoints} points",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
