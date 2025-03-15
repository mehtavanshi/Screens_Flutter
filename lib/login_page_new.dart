import 'package:flutter/material.dart';

class New_login_page extends StatefulWidget {
  const New_login_page({super.key});

  @override
  State<New_login_page> createState() => _New_login_pageState();
}

class _New_login_pageState extends State<New_login_page> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Expanded(child: Container(color: Colors.orange.shade300,),),
          Image.network("https://www.pixground.com/wp-content/uploads/2023/09/Blue-Gradient-Abstract-Layers-AI-Generated-4K-Wallpaper-1024x576.webp",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,fit: BoxFit.cover,),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.5 ,
                        width: MediaQuery.of(context).size.width  * 0.8,
                        color: Colors.black12,

                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: "E-mail",
                                  labelStyle:
                                  TextStyle(fontSize: 20.0, color: Colors.white),
                                  hoverColor: Colors.white,
                                  focusColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide:
                                    BorderSide(color: Colors.lightBlue, width: 2.0),
                                  ),
                                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                                ),
                                style: TextStyle(color: Colors.white,fontSize: 20),
                                validator: (value){
                                  if ( value == null || value.isEmpty){
                                    return "must have some value";
                                  }

                                },

                              ),
                              SizedBox(height: 20,),
                              TextFormField(
                                controller: _passController,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle:
                                  TextStyle(fontSize: 20.0, color: Colors.white),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide:
                                    BorderSide(color: Colors.lightBlue, width: 2.0),
                                  ),
                                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                                ),
                                style: TextStyle(color: Colors.white,fontSize: 20),
                                validator: (value){
                                  if ( value == null || value.isEmpty){
                                    return "enter password";
                                  }

                                },

                              ),
                              SizedBox(height: 20,),


                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ?? false) {
                                    // Add authentication logic here

                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
    )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
