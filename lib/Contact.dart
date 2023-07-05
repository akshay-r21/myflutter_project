import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Contact(),
  ));
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            " My Contact",
            style: GoogleFonts.poppins(fontSize: 30),
          ),
        ),
        body: ListView(
          children: const [
            Card(
                child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("Assets/Icons/per.png"),
              ),
              title: Text("John"),
              trailing: Icon(Icons.call),
            )),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person.png"),
                    ),
                    title: Text("Alex"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person2.png"),
                    ),
                    title: Text("Ann"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/per.png"),
                    ),
                    title: Text("Derik"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person.png"),
                    ),
                    title: Text("John"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/orange.png"),
                    ),
                    title: Text("Sima"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/junk.png"),
                    ),
                    title: Text("Junk call",
                        style: TextStyle(
                          color: Colors.red,
                        )),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person.png"),
                    ),
                    title: Text("Siva"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person2.png"),
                    ),
                    title: Text("Alex"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/Contact2.png"),
                    ),
                    title: Text("Maria"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/Contact.png"),
                    ),
                    title: Text("Maichel"),
                    trailing: Icon(Icons.call)
                )),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/per.png"),
                    ),
                    title: Text("Meera"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person2.png"),
                    ),
                    title: Text("Midhun"),
                    trailing: Icon(Icons.call))),
          ],
        ));
  }
}
