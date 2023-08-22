import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/Storage/Login2.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: newhome(),
    debugShowCheckedModeBanner: false,
  ));
}

class newhome extends StatefulWidget {
  @override
  State<newhome> createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {
  late SharedPreferences preferences;
  late String usename;
  late String mobile;
  late String email;
  late String day;

  void initState() {
    fetchdata();
    super.initState();
  }

  void fetchdata() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      usename = preferences.getString("name")!;
      mobile = preferences.getString("mobile")!;
      email = preferences.getString("email")!;
      day = preferences.getString("date")!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        const    CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            Text("Welcome $usename"),
      const       SizedBox(
              height: 10,
            ),
            Text("$mobile"),
            const    SizedBox(
              height: 10,
            ),
            Text("your email  $email"),
            const   SizedBox(
              height: 10,
            ),
            Text("last logged in at  $day"),
            const   SizedBox(
              height: 10,
            ),
            const    SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  preferences.setBool("newuser", true);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login2()));
                },
                child: Text("Log out"))
          ],
        ),
      ),
    );
  }
}
