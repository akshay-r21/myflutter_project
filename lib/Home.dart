import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutter_project/LoginPage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Hello There",
            style: GoogleFonts.poppins(fontSize: 45, color: Colors.black)),
        Text(
          "Verify with us on our page",
          style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
        ),
        Image.asset("Assets/Icons/Login.jpg",),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text("Login"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text("Sign Up"),
        ),
      ],
    )
        /*  ElevatedButton(onPressed: (){
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
     },child: Text("Login"),
     ),*/
        );
  }
}
