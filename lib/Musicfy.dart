import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musicify(),
  ));
}

class Musicify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Musify.",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.pinkAccent),
          ),
        ),
      ),
     /* bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 5,
          selectedItemColor: Colors.pinkAccent,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.black,
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                backgroundColor: Colors.black,
                label: "save"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                backgroundColor: Colors.black,
                label: "more")
          ]),*/
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Suggested playlists",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Recommended for you",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold)),
          ),
          ListView(
            shrinkWrap: true,
              children: List.generate(5, (index) => Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.red,),
              title: Text("Hero",style: TextStyle(),),
              subtitle: Text('Taylor Swift '),
              trailing: Row(
                children: [
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.download_outlined)
                ],
              ),
            ),
          )))
        ],
      ),
    );
  }
}
