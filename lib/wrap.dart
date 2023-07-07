import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),//entire app bar colors changes
    home: wrap(),
  ));
}
class wrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my home",),backgroundColor: Colors.green,
      actions:  [
        Icon(Icons.camera_alt),
        SizedBox(width: 10,),
        Icon(Icons.search),
        SizedBox(width: 10,),
        PopupMenuButton(itemBuilder: (context){
          return [
            PopupMenuItem(child: Text("Settings")),
            PopupMenuItem(child: Text("New Group")),
            PopupMenuItem(child: Text("Pzyments")),
            PopupMenuItem(child: Text("NewBroadcast")),
            PopupMenuItem(child: Text("Settings")),

          ];
        })
      ],),
      body: Card(
        child: ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/mango.png")),
            title: Text("Pineapple"),
          subtitle: const Row(
          ),
        ),
      ),
    );
  }
  
}