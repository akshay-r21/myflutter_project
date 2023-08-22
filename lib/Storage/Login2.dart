import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/Storage/Newhome.dart';
import 'package:myflutter_project/Storage/Registeration.dart';
import 'package:myflutter_project/Storage/shared_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Login2(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login2 extends StatefulWidget {
  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final uname = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

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
                controller: uname,
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
                controller: pass,
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
                  ElevatedButton(
                      onPressed: () => validateLogin(), child: Text("Login")),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => reg()));
                      },
                      child: Text("Goto Registerationpage"))
                ]),
              ),
            ),
          ]),
        ));
  }

  validateLogin() async {
    preferences = await SharedPreferences.getInstance()!;
    String storeduname = preferences.getString('uname')!;
    String storedpass = preferences.getString('pass')!;

    String usename = uname.text;
    String pwd = pass.text;

    if (storedpass != "" && storeduname != "") {
      if (storeduname == usename && storedpass == pwd) {
        preferences.setString("uname", usename);
        preferences.setBool("Newuser", false);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => newhome()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Invalid username or password")));
      }
    }
  }
}
