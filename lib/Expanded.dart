import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ExpNDED() ,
    debugShowCheckedModeBanner: false,
  ));
}
class ExpNDED  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Expanded"),),
     body: Container(
       color: Colors.green,
       height: MediaQuery.of(context).size.height,
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Center(child: Text("hello",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
           Center(child: Icon(Icons.add,size: 30,)),
           Expanded(child: Image.asset("Assets/Images/fruits_image.png")),
           Expanded(child: Image.asset("Assets/Images/fruits_image.png"))
         ],
       ),
     ),

   );
  }
}
