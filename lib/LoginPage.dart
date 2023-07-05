//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutter_project/Home.dart';
import 'package:myflutter_project/RegisterationPage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

   final int  password = 12345678;
  final  String username = "admin@a";

  static var  uname = TextEditingController();
  static var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login",
          style: GoogleFonts.poppins(
            fontSize: 45, color: Colors.black
          ),),
          Text("Login in with your details",
          style: GoogleFonts.poppins(
            fontSize: 15,color: Colors.black
          ),),
          Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: uname,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Username",
                      helperText: "Username must be real",
                      labelText: "Username",
                      prefixIcon: const Icon(Icons.person)))),
          Padding(
              padding: EdgeInsets.only(right: 12, left: 12, bottom: 12),
              child: TextField(
                controller: pass,
                obscureText: true, //password dots
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            30) //to change outline of textarea box
                        ),
                    hintText: "Password",
                    helperText: "Password must contain at least 6 letters",
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.visibility_off_sharp),
                    suffixIcon: const Icon(Icons.visibility)),
              )),
          ElevatedButton(onPressed: () {
            if(uname.text != "" && pass.text != ""){
            // ignore: unrelated_type_equality_checks
            if( uname.text == username && pass.text == password ){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RegisterationPage()));

            }else{
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar
                (content: Text("Username or password is incorrect"),
                backgroundColor: Colors.red,));
          }}
            else{
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar
                (content: Text("Fields cannot be empty"),
              backgroundColor: Colors.red,));
            }
          }, child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegisterationPage()));
              },
              child: Text("Not a User !!! Register now"))
        ],
      ),
    );
    //return const Placeholder();
  }
}
