import 'package:flutter/material.dart';
import 'package:myflutter_project/Storage/Login%20using%20shared%20preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: shared_home(),
    debugShowCheckedModeBanner: false,
  ));
}

class shared_home extends StatefulWidget {
  const shared_home({super.key});

  @override
  State<shared_home> createState() => _shared_homeState();
}

class _shared_homeState extends State<shared_home> {
  late SharedPreferences preferences;
  late String username;

  @override
  void initState() {
    fetchdata();
    super.initState();
  }
  void fetchdata() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("uname")!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome $username"),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              preferences.setBool("newuser", true);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => login_extends()));
            }, child: Text("Log out"))
          ],
        ),
      ),
    );
  }
}
