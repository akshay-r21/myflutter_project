import 'package:flutter/material.dart';
import 'package:myflutter_project/Storage/Sqlite/Signuppage.dart';

void main() {
  runApp(MaterialApp(
    home: Loginuser(),
    debugShowCheckedModeBanner: false,
  ));
}

class Loginuser extends StatefulWidget {
  @override
  State<Loginuser> createState() => _LoginuserState();
}

class _LoginuserState extends State<Loginuser> {
  var formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  // late bool newuser;
  void checkLogin(String email, String password) {
    if (email == "admin@gmail.com" && password == "123456") {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    label: Text("Username"),
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                    label: Text("password"),
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  ElevatedButton(onPressed: () {}, child: Text("Login")),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text("Goto Registerationpage"))
                ]),
              ),
            ),
          ]),
        ));
  }

// void checkLogin() {

// }
}
