import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/Storage/Login%20using%20shared%20preference.dart';
import 'package:myflutter_project/Storage/Login2.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(
    home: reg(),
    debugShowCheckedModeBanner: false,
  ));
}
class reg extends StatefulWidget{
  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  final uname = TextEditingController();
  final name = TextEditingController();
  final pass = TextEditingController();
  final mobile = TextEditingController();
  final email = TextEditingController();
  final date = TextEditingController();

  late SharedPreferences preferences;
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
              child: TextField(
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
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),hintText: "Username",label: Text("Username")//,helperText: "Username"
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),hintText: "Email ",label: Text("Email")//,helperText: "Username"
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: mobile,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),hintText: "Mobile",label: Text("Mobile")//,helperText: "Username"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),hintText: "Password",label: Text("Password")//,helperText: "Password"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: date,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),hintText: "Date",label: Text("Date")//,helperText: "Name"
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () =>  storedata(),
                child: Text("Register"))
          ],
        ),
      ),
    );
  }

 void  storedata()  async{

      String  personname = name.text;
      String  username = uname.text;
      String  password = pass.text;
      String  mobilephn = mobile.text;
      String  emailid = email.text;
      String  datet = date.text;

      preferences = await SharedPreferences.getInstance()!;
      preferences.setString('name', personname);
      preferences.setString('uname', username);
      preferences.setString('pass', password);
      preferences.setString('mobile', mobilephn);
      preferences.setString('email', emailid);
      preferences.setString('date', datet);

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login2()));
 }
}