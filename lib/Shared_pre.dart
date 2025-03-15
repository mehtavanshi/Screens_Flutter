import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/screen_1.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPre extends StatefulWidget {
  const SharedPre({Key? key}) : super(key: key);

  @override
  _SharedPreState createState() => _SharedPreState();

}

class _SharedPreState extends State<SharedPre> {
  var uname = TextEditingController();
  var pass = TextEditingController();

  void initState() {
    super.initState();
    loadStoredValues();
  }

  Future<void> loadStoredValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String storedUname = prefs.getString("un") ?? "";
    String storedPass = prefs.getString("pass") ?? "";

    setState(() {
      uname.text = storedUname;
      pass.text = storedPass;
    });
  }

  Future<void> rememberMe(String u, String p) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Check if values already exist before saving
    if (prefs.getString("un") == null && prefs.getString("pass") == null) {
      prefs.setString("un", u);
      prefs.setString("pass", p);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Enter username"),
            TextFormField(
              controller: uname,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(fontSize: 20.0, color: Colors.black87),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Password"),
            TextFormField(
              controller: pass,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 20.0, color: Colors.black87),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  rememberMe(uname.text, pass.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen_1()),
                  );
                });
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
