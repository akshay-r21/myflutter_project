import 'package:flutter/material.dart';
import 'package:myflutter_project/Storage/Firre_basex/firebasehelper.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Fire_reg(),
  ));
}

class Fire_reg extends StatefulWidget {
  @override
  State<Fire_reg> createState() => _Fire_regState();
}

class _Fire_regState extends State<Fire_reg> {
  final remail = TextEditingController();
  final rpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase reg"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: remail,
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: rpass,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      String username = remail.text.trim();
                      String password = rpass.text.trim();
                    //  Firebasehelper.signUp(email : username, pwd : password){
                      /*  if(message == null){

                        }
                      }
                    },*/},
                    child: Text("Register")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

