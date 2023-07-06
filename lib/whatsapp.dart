import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),//entire app bar colors changes
    home: Whatsapp(),
  ));
}
class Whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Whatsapp",),backgroundColor: Colors.green,
        actions: const [
          Icon(Icons.camera_alt),
          SizedBox(width: 30,),
          Icon(Icons.search),
        ],),
      body: Card(
        child: ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png")),
          title:Text("Alen"),
          subtitle: Wrap(direction : Axis.horizontal,
              children :[
                Icon(Icons.check,),
              SizedBox( width: 10),
              Text("hi ")]),

           trailing: Wrap(
            direction: Axis.vertical,
            children: [
              Icon(Icons.message,color: Colors.green,),
              SizedBox( width:  20),
              Text("12:02")
            ],
          ),
          ),
        ),
      );
  }

}