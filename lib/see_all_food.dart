import 'package:flutter/material.dart';

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

class See_all_food extends StatelessWidget {
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
      name: "Margherita Pizza",
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
    PizzaItem(
      imageUrl:
          "https://images.unsplash.com/photo-1593246049226-ded77bf90326?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTl8fHxlbnwwfHx8fHw%3D",
      name: "Pizza",
      points: 2000,
    ),
    PizzaItem(
      imageUrl:
          "https://images.unsplash.com/photo-1541167760496-1628856ab772?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D",
      name: "Coffee",
      points: 500,
    ),
    PizzaItem(
      imageUrl:
          "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
      name: "Cup-Cake",
      points: 800,
    ),
    PizzaItem(
      imageUrl:
          "https://media.istockphoto.com/id/157472912/photo/ice-cream-composition-on-a-bowl.jpg?b=1&s=612x612&w=0&k=20&c=3NWTvoln9aInWFBsdJpxMmzR_fshHCgmA3tpJnlWBcs=",
      name: "Ice-cream",
      points: 5000,
    ),
    PizzaItem(
      imageUrl:
          "https://www.foodiesfeed.com/wp-content/uploads/2015/07/smurf-ice-cream-by-the-sea-1.jpg",
      name: "cake",
      points: 600,
    ),
    PizzaItem(
      imageUrl:
          "https://www.foodiesfeed.com/wp-content/uploads/2023/03/colorful-ice-cream-cone.jpg",
      name: "ice-cream",
      points: 2000,
    ),
    PizzaItem(
      imageUrl:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRalXZfGaV6o80B8NxorYbcRsTEjLKikVx7WtTOFcbT1g&s",
      name: "ice-cream",
      points: 2000,
    ),
    PizzaItem(
      imageUrl:
          "https://www.foodiesfeed.com/wp-content/uploads/2023/06/colorful-cocktails.jpg",
      name: "juices",
      points: 2000,
    ),
    PizzaItem(
      imageUrl:
          "https://www.foodiesfeed.com/wp-content/uploads/2023/12/fruit-popsicles.jpg",
      name: "Culfies",
      points: 2000,
    ),
    PizzaItem(
      imageUrl:
          "https://images.unsplash.com/photo-1606890737304-57a1ca8a5b62?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZGVsaWNpb3VzJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D",
      name: "Cake",
      points: 2000,
    ),

    // Add more pizza items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food List",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: (pizzaItems.length / 2).ceil(),
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
                  child: buildPizzaCard(pizzaItems[startIndex]),
                ),
              ),
              SizedBox(width: 3), // Add spacing between cards
              if (startIndex + 1 < pizzaItems.length)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildPizzaCard(pizzaItems[startIndex + 1]),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget buildPizzaCard(PizzaItem pizzaItem) {
    return Card(
      color: Colors.red[100],
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
                  pizzaItem.imageUrl,
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
                        pizzaItem.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Text(
                "${pizzaItem.points} points",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
