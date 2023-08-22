import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/Statemangement/Meat_shop/Screens/Category.dart';

void main() {
  runApp(MaterialApp(
    home: Login_meat(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login_meat extends StatefulWidget {
  @override
  State<Login_meat> createState() => _Login_meatState();
}

class _Login_meatState extends State<Login_meat> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Welcome back! Login with your credentials"),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email Id",
                  prefixIcon: Icon(Icons.supervised_user_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon((showpass == true
                          ? Icons.visibility_off_sharp
                          : Icons.visibility))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => cat()));
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(child: Text("Do you have account?Sign up") ,onPressed: (){},),
          )
        ],
      ),
    );
  }
}
