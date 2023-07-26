import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Drawer_ex(),
    debugShowCheckedModeBanner: false,
  ));
}

class Drawer_ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
      ),
      drawer: Drawer(
        /*  child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.pink,
            Colors.red,
           // Colors.yellowAccent,
            Colors.orange,
            Colors.red,
            Colors.pink
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ),*/
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.pink,
                Colors.red,
                // Colors.yellowAccent,
                Colors.orange,
                Colors.red,
                Colors.pink
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),

          child : ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Sundar Pichai",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                  accountEmail: Text("CEO of Google"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Sundar_Pichai_%282023%29_cropped.jpg/800px-Sundar_Pichai_%282023%29_cropped.jpg")),
              ),
              ListTile(
                //leading: IconButton( {}() , Icons.home),
                title: Text("DashBoard"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),  ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),  ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
      ],
          ),
        ),
      ),
      body: Column(
        children: [
          Image(
            image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Sundar_Pichai_%282023%29_cropped.jpg/800px-Sundar_Pichai_%282023%29_cropped.jpg",
            ),
            height: 100,
            width: 100,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Sundar Pichai ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
              "Pichai Sundararajan (born June 10, 1972), better known as Sundar Pichai , is an American business executive.[6] He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google."
              "    Pichai began his career as a materials engineer. Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004,[8] where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM. The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products that he oversaw.")
        ],
      ),
    );
  }
}
