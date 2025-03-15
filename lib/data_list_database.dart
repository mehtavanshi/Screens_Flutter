import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/insert_newtable.dart';

import 'database/first_data.dart';

class Data_List_Database extends StatefulWidget {
  const Data_List_Database({super.key});

  @override
  State<Data_List_Database> createState() => _Data_List_DatabaseState();
}

class _Data_List_DatabaseState extends State<Data_List_Database> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("with DataBase"),
          actions: [
            InkWell(
              child: Icon(Icons.exposure_plus_1_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Insert_newtable(null)),
                );
              },

            ),
          ],
        ),
        body: FutureBuilder(
          future: My_database().copyPasteAssetFileToRoot(),
          builder: (context, snapshotcopy) {
            if (snapshotcopy.hasData) {
              return FutureBuilder(
                  future: My_database().getdata(),
                  builder: (context, snapshotList) {
                    if (snapshotList.hasData) {
                      // return Text("Yesss data   found");
                      // return ListView.builder (itemBuilder:(itemCount:(Text(snapshotList.data![index]['userName']))));
                      return ListView.builder(
                        itemCount: snapshotList.data!.length,
                        itemBuilder: (context, index) => Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  snapshotList.data![index]['userId'].toString()),
                              SizedBox(
                                width: 10,
                              ),
                              Text(snapshotList.data![index]['userName']),
                              IconButton(onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Insert_newtable(snapshotList.data![index])),
                                );
                              }, icon: Icon(Icons.edit)),
                              IconButton(onPressed: () {
                                My_database().deleteUser(snapshotList.data![index]['userId']).then((value) {
                                  setState(() {

                                  });
                                });
                              }, icon: Icon(Icons.delete)),
                            ],

                          ),
                        ),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  });
            } else if (snapshotcopy.hasError) {
              return Text(snapshotcopy.error.toString());
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
