import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/screen_1.dart';
import 'package:screen/screen_2.dart';

class Screen_3 extends StatefulWidget {
  @override
  State<Screen_3> createState() => _Screen_3State();
}

class _Screen_3State extends State<Screen_3> {
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

class News {
  final String imageUrl;
  final String name;
  final int points;
  final String img;
  final String writer_name;

  News({
    required this.imageUrl,
    required this.name,
    required this.points,
    required this.img,
    required this.writer_name,
  });
}

class NewsDesc {
  final String imageUrl;
  final String title;
  final String description;
  final String date;

  NewsDesc({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.date,
  });
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<News> newsItems = [
    News(
      imageUrl:
          "https://stories.site/my-furniture/latest-office-design-ideas/assets/2.jpeg",
      name: "News",
      points: 3000,
      img:
          "https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp",
        writer_name:"Moxa",
    ),
    News(
      imageUrl:
          "https://img.freepik.com/free-photo/modern-office-space-with-desktops-with-modern-computers-created-with-generative-ai-technology_185193-110089.jpg",
      name: "Hiiiii ",
      points: 2400,
      img:
          "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
      writer_name:"Het",
    ),

    News(
      imageUrl:
          "https://images.inc.com/uploaded_files/image/1920x1080/getty_898700298_2000131816537672530_353744.jpg",
      name: "Office",
      points: 1000,
      img:
          "https://assets-global.website-files.com/619e8d2e8bd4838a9340a810/647c10640a3ea753d88b9748_profile-picture-hero-img.webp",
      writer_name:"Sakshi",
    ),
    News(
      imageUrl:
          "https://www.spectruminteriors.co.in/wp-content/uploads/2020/12/Office-Interior-12.jpeg",
      name: "Hello world",
      points: 2000,
      img:
         "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png",
      writer_name:"Janki",
    ),
    // Add more pizza items as needed
  ];

  List<NewsDesc> newsDescList = [
    NewsDesc(
      imageUrl:
          "https://www.hindustantimes.com/ht-img/img/2024/01/19/550x309/Minister-G-Parameshwara-on-Monday-visited-the-vict_1702408074785_1705641939045.jpg",
      title: "First",
      description:
          "Congress unaffected by BJP-JD(S) alliance: Karnataka Minister Parameshwara",
      date: "26/5/2024",
    ),
    NewsDesc(
      imageUrl:
          "https://www.hindustantimes.com/ht-img/img/2023/10/06/550x309/CRICKET-ICC-MENS-WC-2023-ENGNZL-ODI-6_1696592836309_1696592836773.jpg",
      title: "Cricket;",
      description:
          "New Zealand vs Pakistan Live Score: New Zealand won the toss and elected to field in the 4th T20I of Pakistan tour of New Zealand, 2024",
      date: "7/5/2022",
    ),
    NewsDesc(
      imageUrl:
          "https://www.hindustantimes.com/ht-img/img/2024/01/18/550x309/nick_jonas_1705560426893_1705560473788.jpg",
      title: "Entertenment",
      description:
          "Park Bo Young confirmed to star in new webtoon K-drama by Moving writer",
      date: "2/5/2023",
    ),
    NewsDesc(
      imageUrl:
          "https://www.hindustantimes.com/ht-img/img/2024/01/19/550x309/Students-go-to-school-bracing-the-cold--foggy-weat_1705641432701.jpg",
      title: "Delhi",
      description:
          "Visibility poor in Delhi amid dense fog despite improvement in minimum temperature",
      date: "9/1/2024",
    ),
    NewsDesc(
      imageUrl:
          "https://www.hindustantimes.com/ht-img/img/2024/01/18/550x309/priyanka_cjopra_nick_malti_1705560883318_1705560907740.jpg",
      title: "Priyanka chopra",
      description:
          "Cutest pics from 'little angel' Malti's 2nd birthday celebrations with Priyanka Chopra and Nick Jonas",
      date: "28/5/2024",
    ),
    // Add more items if needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Expanded(
            child: Container(

            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Screen_2()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.blue,
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
                          Icons.search,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.pinkAccent,
                              width: 2.0,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          // color: Colors.purple[50],

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/thumbnails/009/273/280/small/concept-of-loneliness-and-disappointment-in-love-sad-man-sitting-element-of-the-picture-is-decorated-by-nasa-free-photo.jpg",
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "News",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: newsItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Stack(
                          children: [
                            Expanded(
                              child: Column(children: [
                                Expanded(
                                  child: Card(
                                    elevation:5,
                                    shadowColor: Colors.pink[50],
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // border: Border.all(
                                        //   color: Colors.black,
                                        //   width: 1.0,
                                        // ),
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20.0),
                                        child: Image.network(
                                          newsItems[index].imageUrl,
                                          width:
                                              MediaQuery.of(context).size.width * 0.85,
                                          height: 250,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      newsItems[index].name,
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height *
                                            0.035,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 5),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "${newsItems[index].points} points",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height * 0.015,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.fromLTRB(20, 0, 0, 5),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20.0),
                                        child: Image.network(
                                          newsItems[index].img,
                                          width: MediaQuery.of(context).size.width * 0.09,
                                          height:
                                              MediaQuery.of(context).size.height * 0.05,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.fromLTRB(20, 0, 0, 5),
                                    ),
                                    Container(
                                      child: Text(
                                        newsItems[index].writer_name,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize:
                                          MediaQuery.of(context).size.height * 0.025,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),  // Adjust the radius as needed
                      topRight: Radius.circular(25.0), // Adjust the radius as needed
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                        child: Expanded(
                            flex: 1,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1.2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildClickableText("Latest"),
                                    buildClickableText("Trending"),
                                    buildClickableText("Cricket"),
                                    buildClickableText("Life"),
                                    buildClickableText("new"),
                                    buildClickableText("India"),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      Expanded(
                        flex: 6,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: newsDescList.length,
                                      itemBuilder: (context, index) {
                                        NewsDesc news = newsDescList[index];

                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: MediaQuery.of(context).size.height * 0.15,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            border: Border.all(
                                                              color: Colors.white,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius.circular(20.0),
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius.circular(20.0),
                                                            child: Image.network(
                                                              newsDescList[index].imageUrl,
                                                              height: MediaQuery.of(context)
                                                                  .size
                                                                  .height,
                                                              width: MediaQuery.of(context)
                                                                  .size
                                                                  .width,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        newsDescList[index].title,
                                                        style: TextStyle(
                                                          fontSize: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.025,
                                                          color: Colors.red.shade400,
                                                        ),
                                                      ),
                                                      Text(
                                                        newsDescList[index].description,
                                                        maxLines: 2,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                          fontSize: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.018,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          child: Text(
                                                            newsDescList[index].date,
                                                            style: TextStyle(
                                                              fontSize: MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                                  0.012,
                                                            ),
                                                          ),
                                                          alignment: Alignment.bottomLeft,
                                                          margin:
                                                          EdgeInsets.fromLTRB(0, 0, 0, 5),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
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
                                          color: Colors.red[50],
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        child: Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                          padding: const EdgeInsets.all(2.0),
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
                                                                builder: (context) =>
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
                                                                builder: (context) =>
                                                                    Screen_2()),
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons.looks_two_outlined,
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
                                                                builder: (context) =>
                                                                    Screen_3()),
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons.looks_3_rounded,
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
              ),


            ],
          ),
        ],
      ),
    );
  }

  String selectedCategory = 'Latest';

  Widget buildClickableText(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = text; // Update the selected category
        });
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height * 0.025,
            color: selectedCategory == text ? Colors.red : Colors.black,
          ),
        ),
      ),
    );
  }

  void handleTextTap(String text) {
    // Handle the tap based on the clicked text
    switch (text) {
      case "Latest":
        // Handle tap on "Latest"

        break;
      case "Trending":
        // Handle tap on "Trending"
        // Call a different list or perform a different action
        break;
      case "Cricket":
        // Handle tap on "Cricket"
        // Call another list or perform another action
        break;
      case "Life":
        // Handle tap on "Life"
        // Call the list or perform the action for "Life"
        break;
      default:
        // Handle other cases if needed
        break;
    }
  }
}
