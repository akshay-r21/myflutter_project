import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Signup(),
    debugShowCheckedModeBanner: false,
  ));
}
class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override

  final email = TextEditingController();

  final name = TextEditingController();

  final password = TextEditingController();

 // late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registeration"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Registeration",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),hintText: "Name",label: Text("Name")//,helperText: "Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),hintText: "Username",label: Text("Username")//,helperText: "Username"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),hintText: "Password",label: Text("Password")//,helperText: "Password"
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {},
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
}