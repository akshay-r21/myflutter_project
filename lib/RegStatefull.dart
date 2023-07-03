import 'package:flutter/material.dart';
import 'package:myflutter_project/LoginPage.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegisterPage(),
  ));
}
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final formkey = GlobalKey<FormState>();  // to validate entire form
  @override

  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Statefull register"),
     ),
     body: Form(
       key: formkey ,
       child: Column(
         children: [
           Text("Register page", style: TextStyle(fontSize: 30),),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "Email",
                 labelText: "Email",
               ),
               validator: (email){
                 if(email!.isEmpty && !email.contains("@")){
                   return "Enter a valid email";
                 }
               },
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "Password",
                 labelText: "Password",
               ),
               validator: (password){
                 if(password!.isEmpty || password.length<8 ){
                   return "Enter a valid password ";
                 }
               },
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText:  'password'
               ),
             ),
           ),
           ElevatedButton(onPressed: (){
             var isValid = formkey.currentState!.validate();
             if(isValid == true){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
             }
           }, child: Text('register')
           )
          ],
       ),

     )

   );
  }
}