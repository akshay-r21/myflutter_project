import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/HomePage.dart';
import 'package:myflutter_project/Listviewbuilder.dart';
import 'package:myflutter_project/Listviewseperate.dart';
import 'package:myflutter_project/Listviewwithlistgeneration.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Bottombarnavigation(),
  ));
}

class Bottombarnavigation extends StatefulWidget {
  @override
  State<Bottombarnavigation> createState() => _BottombarnavigationState();
}

class _BottombarnavigationState extends State<Bottombarnavigation> {
  int index = 0;

  var screens = [ListView_Separator(), Listview1(), ListView2(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottomnavigationbar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          elevation: 5,
          backgroundColor: Colors.blue,
          currentIndex: index,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.shifting, //or fixed
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts_sharp),
                label: "contact",
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Colors.yellow), //changes the item collor),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "view"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
          ]),
body: screens[index],
    );
  }
}
