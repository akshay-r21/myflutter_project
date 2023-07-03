import 'package:flutter/material.dart';
import 'package:myflutter_project/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegisterationPage(),
  ));
}
class RegisterationPage extends StatelessWidget {
  const RegisterationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Sign up ",
        style: GoogleFonts.poppins(
            fontSize: 45, color: Colors.black
        ),),
      Text("Create an account here mow for free",
        style: GoogleFonts.poppins(
            fontSize: 15, color: Colors.black
        ),),
      Padding(
        padding: EdgeInsets.all(12.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23)),
              hintText: "Email",
              helperText: "Email must be real",
              labelText: "Email",
              prefixIcon: const Icon(Icons.keyboard)),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12.0),
        child: TextField(
          obscureText: true,
          obscuringCharacter: "*",
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23)),
              hintText: "Password",
              helperText: "Password must be 6 character",
              labelText: "Password",
              prefixIcon: const Icon(Icons.visibility_off_sharp),
              suffixIcon: const Icon(Icons.visibility)),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12.0),
        child: TextField(
          obscureText: true,
          obscuringCharacter: "*",
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(23.0)),
              hintText: "Password",
              helperText: "Password must be same as above Password",
              labelText: "Confirm Password",
              prefixIcon: const Icon(Icons.visibility_off_sharp),
              suffixIcon: const Icon(Icons.visibility)),
        ),
      ),
      ElevatedButton(onPressed: () {}, child: Text("Sign Up"),
      ),
      TextButton(onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LoginPage()));
      },
          child: Text("Already a user? Login here "))
      ],
    ),);
  }
}
