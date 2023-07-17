import 'package:flutter/material.dart';
import 'package:myflutter_project/Gridview/Whatsappstatus.dart';
import 'package:myflutter_project/Home.dart';
import 'package:myflutter_project/Whatsappcall.dart';
import 'package:myflutter_project/whatsappmain.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tab(),
  ));
}

class tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          backgroundColor: Color(0xff0128C7E),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("New Group")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("NewBroadcast")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              },color:  Color(0xff0128C7E),),
            )
          ],
          bottom: const TabBar(tabs: [
            Icon(Icons.groups),
            Text("Chats"),
            Text("Status"),
            Text("Calls"),
          ]),
        ),
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
