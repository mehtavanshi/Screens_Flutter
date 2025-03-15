import 'package:flutter/material.dart';
import 'package:screen/Shared_pre.dart';
import 'package:screen/bottomnavigationbar.dart';
import 'package:screen/drawer.dart';
import 'package:screen/login_page.dart';
import 'package:screen/registrationScreen.dart';
import 'package:screen/screen_1.dart';
import 'package:screen/screen_2.dart';
import 'package:screen/screen_3.dart';
import 'package:screen/see_all_food.dart';
import 'package:screen/see_all_shoping.dart';
import 'package:screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data_list_database.dart';
import 'insert_newtable.dart';
import 'login_page_new.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Future<Widget> getUser() async {
  //   SharedPreferences pref= await SharedPreferences.getInstance();
  //   var u=pref.getString('un');
  //   var p=pref.getString('pass');
  //   if(!p!.isEmpty && !u!.isEmpty){
  //     return Screen_1();
  //   }else{
  //     return SharedPre();
  //   }
  // }
  Future<bool> hasUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var u = prefs.getString('un');
    var p = prefs.getString('pass');
    return u != null && p != null && u.isNotEmpty && p.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: SplashScreen(),
      // home: FutureBuilder<bool>(
      //   future: hasUserData(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return CircularProgressIndicator();
      //     } else {
      //       if (snapshot.data == true) {
      //         return Screen_1(); // Navigate to Screen1 if data is present
      //       } else {
      //         return SharedPre(); // Navigate to SharedPre to input data if first time opening app
      //       }
      //     }
      //   },
      // ),

    );
  }
}
