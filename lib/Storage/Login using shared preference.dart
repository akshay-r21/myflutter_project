import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:myflutter_project/Storage/shared_home.dart';

void main() {
  runApp(MaterialApp(
    home: login_extends(),
    debugShowCheckedModeBanner: false,
  ));
}

class login_extends extends StatefulWidget {
  @override
  State<login_extends> createState() => _login_extendsState();
}

class _login_extendsState extends State<login_extends> {
  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();
  late SharedPreferences preferences; //shared prefrence object
  late bool newuser;

  @override
  void initState() {
    check_user_alreay_login();
    super.initState();
  }

  void check_user_alreay_login() async {
    preferences = await SharedPreferences.getInstance()!;
    newuser = preferences.getBool("newuser") ?? true;

    if (newuser == false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => shared_home()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared preference login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                controller: user_controller,
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
                controller: pass_controller,
                decoration: InputDecoration(
                    label: Text("password"),
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  preferences = await SharedPreferences.getInstance()!;
                  String username = user_controller.text;
                  String password = pass_controller.text;

                  if (username != "" && password != "") {
                    preferences.setString("uname", username);
                    preferences.setBool("Newuser", false);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => shared_home()));
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
