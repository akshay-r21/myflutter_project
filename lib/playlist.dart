import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: playlist(),
    debugShowCheckedModeBanner: false,
  ));
}

class playlist extends StatefulWidget {
  @override
  State<playlist> createState() => _playlistState();
}

class _playlistState extends State<playlist> {
  int index = 0;

  var images = [
    "Assets/Images/top.png",
    "Assets/Images/music4.jpg",
    "Assets/Images/music.jpg",
    "Assets/Images/music2.jpg",
    "Assets/Images/muaic5.jpg",
    "Assets/Images/music3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          "Playlists",
          style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 35,
              fontWeight: FontWeight.bold),
        )),
        bottom: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.grey,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.pinkAccent),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.pinkAccent,
                  )),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow), label: 'play list',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_sharp), label: 'more',
              backgroundColor: Colors.black),
        ],
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        backgroundColor: Colors.blue,
        currentIndex: 1,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.pinkAccent,
        type: BottomNavigationBarType.shifting,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 30),
        children: List.generate(
            6,
            (index) => Container(
                    child: Column(
                  children: [Image.asset(images[index])],
                ))),
      ),
    );
  }
}
