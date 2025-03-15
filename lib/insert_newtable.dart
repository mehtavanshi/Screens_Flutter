import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/data_list_database.dart';

import 'package:screen/registrationScreen.dart';

import 'database/first_data.dart';

class Insert_newtable extends StatefulWidget {

  Map<String, dynamic>? map;
  Insert_newtable(Map<String, dynamic>? map) {
    this.map = map;
  }


  @override
  State<Insert_newtable> createState() => _Insert_newtableState();


}

class _Insert_newtableState extends State<Insert_newtable> {
  final _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void initState() {
    if(widget.map != null) {
      _emailController.text = widget.map!["userName"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login_Page',
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/free-vector/realistic-style-technology-particle-background_23-2148426704.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/236x/46/b4/83/46b483b4f637666600f2a9dbf2752bef.jpg",
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      // labelText: 'UserName',
                      labelStyle:
                          TextStyle(fontSize: 20.0, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 2.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () async {
                      // Add authentication logic here
                      // addUser().then((value) => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Data_List_Database()),
                      // ));

                      if (widget.map == null) {
                        addUser().then((value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Data_List_Database()),
                          );
                        });
                      } else {
                        await updateUser().then((value) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Data_List_Database()),
                          );
                        });
                      }
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle Google login
                        },
                        child: Image.network(
                          "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png",
                          height: 35.0,
                          width: 35.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 30.0),
                      GestureDetector(
                        onTap: () {
                          // Handle Facebook login
                        },
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png",
                          height: 35.0,
                          width: 35.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }

  Future<void> addUser() async {
    Map<String, dynamic> map = {};
    map['userName'] = _emailController.text.toString();
    int id = await My_database().insertUser(map);
  }

  Future<void> updateUser() async {
    Map<String, dynamic> map = {};
    map['userId'] = widget.map!["userId"];
    map['userName'] = _emailController.text.toString();
    await My_database().updateUser(map);
  }
}
