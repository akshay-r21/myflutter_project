import 'package:flutter/material.dart';
import 'package:myflutter_project/LoginPage.dart';
import 'package:myflutter_project/SplashScreen.dart';

void main() {
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
  final formkey = GlobalKey<FormState>();
  var confirmpassword;// to validate entire form
bool ShowPasssword = true;
bool SeePassword = true ;
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
           Image.asset("Assets/Icons/Icons.jpg",height:  100,width: 100,),
           Text("Fresh Start ", style: TextStyle(fontSize: 30),),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               textInputAction: TextInputAction.next,
               decoration:  InputDecoration(
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30)
                 ),
                 hintText: "Email",
                 helperText: "Email must be a valid email",
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
               textInputAction: TextInputAction.next,
               obscuringCharacter: "*",
               obscureText: ShowPasssword,
               decoration:  InputDecoration(
                 suffixIcon: IconButton(onPressed: (){
                   setState(() {
                     if(ShowPasssword){
                       ShowPasssword = false;
                     }
                     else{
                       ShowPasssword =true;
                     }
                   });
                 },icon: Icon(
                   ShowPasssword == true ? Icons.visibility : Icons.visibility_off_sharp
                 )),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30)
                 ),
                 hintText: "Password",
                 helperText: "Password must contain atleast 6 letters",
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
               obscuringCharacter: "*",
               obscureText: SeePassword,
               decoration:  InputDecoration(
                 suffixIcon: IconButton(onPressed: (){
                   setState(() {
                     if(SeePassword){
                       SeePassword = false;
                     }else
                       {
                         SeePassword = true;
                       }
                   });
                 },icon: (Icon(
                   SeePassword == true ? Icons.visibility : Icons.visibility_off_sharp))
                 ),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30)
                 ),
                 hintText:  'Password'
               ),
             ),
           ),
           ElevatedButton(onPressed: (){
             var isValid = formkey.currentState!.validate();
             if(isValid == true){
               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
             }
           }, child: Text('register')
           )
          ],
       ),

     )

   );
  }
}
