import 'package:flutter/material.dart';
import 'package:myflutter_project/Home.dart';
/*
import 'package:myflutter_project/Whatsappcall.dart';
import 'package:myflutter_project/Whatsappstatus.dart';
import 'package:myflutter_project/whatsappmain.dart';
*/

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WNavigationbar(),
  ));
}

class WNavigationbar extends StatefulWidget {
  State<WNavigationbar> createState() => _WNavigationbarState();
}

class _WNavigationbarState extends State<WNavigationbar> {
  int index = 0;

 // var screens = [Whatsapp(), HomePage(), Whatsappcall(), Whatsappstatus()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          elevation: 5,

          unselectedItemColor: Colors.blueGrey,
          currentIndex: index,
          selectedItemColor: Colors.black,
          //backgroundColor: Colors.green,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: "chats",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups),
                label: "Communities",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: "Status",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: "Calla",
                backgroundColor: Colors.white),
          ]),
     // body: screens[index],
    );
  }
}
