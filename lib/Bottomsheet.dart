import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// to perform events of gesture we use
//Gesture detector / inkwell
void main() {
  runApp(MaterialApp(
    home: Bottom_sheet(),
    debugShowCheckedModeBanner: false,
  ));
}

class Bottom_sheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onLongPress: () {
              showSheet(context);
            },
            child: Image.asset("Assets/Images/fruits_image.png")),
      ),
    );
  }

  void showSheet( BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.share),
            title: Text("Share "),

            ),
            ListTile(
              leading: Icon(Icons.copy),
              title: Text("Copy  "),

            ),
            ListTile(
             // leading: Icon(Icons.g),
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text("Whatsapp "),

            ),
            ListTile(
              // leading: Icon(Icons.g),
              leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,),
              title: Text("Instagram "),

            ),
            ListTile(
              // leading: Icon(Icons.g),
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              title: Text("Facebook "),

            ),ListTile(
              // leading: Icon(Icons.g),
              leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.blue),
              title: Text("twitter "),

            ),
            ListTile(
              // leading: Icon(Icons.g),
              leading: FaIcon(FontAwesomeIcons.snapchatGhost,color: Colors.yellowAccent),
              title: Text("Snapchat "),

            )
          ],
        ),
      );
    });
  }
}
