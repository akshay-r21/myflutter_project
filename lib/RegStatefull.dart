import 'package:flutter/material.dart';
void main(){

}
class RegisterPage extends StatefulWidget {
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
           TextFormField(
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
           TextFormField(
             decoration: const InputDecoration(
               border: OutlineInputBorder(),
               hintText: "Password",
               labelText: "Password",
             ),
             validator: (password){
               if(password!.isEmpty && password.length<8 ){
                 return "Enter a valid password ";
               }
             },
           ),
           TextFormField(),
           ElevatedButton(onPressed: (){}, child: Text('register')
           )
          ],
       ),

     )

   );
  }
}