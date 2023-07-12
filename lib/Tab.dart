import 'package:flutter/material.dart';
import 'package:myflutter_project/Home.dart';
import 'package:myflutter_project/Whatsappcall.dart';
import 'package:myflutter_project/Whatsappstatus.dart';
import 'package:myflutter_project/whatsappmain.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tab(),
  ));
}
class tab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar:  AppBar(title: const Text("Whatsapp"),
        backgroundColor: Color(0xff0128C7E),
      actions: const [
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Icon(Icons.camera_alt_outlined),
        ),
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert_sharp),
        ),

      ],
      bottom: const  TabBar(tabs: [
        Icon(Icons.groups),
        Text("Chats"),
        Text("Status"),
        Text("Calls"),
      ]),),
      body: TabBarView(children: [
        HomePage(),
        Whatsapp(),
        Whatsappstatus(),
        Whatsappcall()
      ]),
    ),
  );
  }
}