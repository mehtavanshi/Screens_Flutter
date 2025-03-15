import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer_demo extends StatefulWidget {
  const Drawer_demo({Key? key});

  @override
  State<Drawer_demo> createState() => _Drawer_demoState();
}

class _Drawer_demoState extends State<Drawer_demo>
    with TickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "home",
            ),
            Tab(
              text: "about",
            ),
            Tab(
              text: "nice",
            ),
          ],
          onTap: (index) {
            if (index == 2) {
              _showNiceAlert();
            }
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://png.pngtree.com/element_our/sm/20180524/sm_5b072d393d61e.jpg"),
                  ),
                  SizedBox(height: 10,),
                  Text("Insta",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Text("vmm@3010"),
                ],
              ),
            ),
            ListTile(leading: Icon(Icons.ice_skating),title: Text("ice_skating"),),
            ListTile(leading: Icon(Icons.accessibility),title: Text("accessibility"),),
            ListTile(leading:Icon(Icons.headphones),title: Text("headphones"),),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListTile(
          title: Center(child: Text("It's home")),
        ),
        ListTile(
          title: Center(child: Text("It's about")),
        ),
        ListTile(
          title: Center(child: Text("It's Nice")),
        ),
      ]),
    );
  }

  void _showNiceAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('You clicked on "Nice"'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
