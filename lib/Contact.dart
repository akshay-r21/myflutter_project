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
                backgroundImage: AssetImage("Assets/Icons/Contact.png"),
              ),
              title: Text("John"),
              subtitle: Text("7832782321"),
              trailing: Icon(Icons.call),
            )),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person.png"),
                    ),
                    title: Text("Alex"),
                    subtitle: Text("9797977479"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person2.png"),
                    ),
                    title: Text("Ann"),
                    subtitle: Text("8873878887"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/Contact.png"),
                    ),
                    title: Text("Derik"),
                    subtitle: Text("900384939"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person.png"),
                    ),
                    title: Text("John"),
                    subtitle: Text("7982739873"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/Contact2.png"),
                    ),
                    title: Text("Sima"),
                    subtitle: Text("6576376387"),
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
                    subtitle: Text("7672876817",
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
                    subtitle: Text("56776765"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person2.png"),
                    ),
                    title: Text("Alex"),
                    subtitle: Text("637536557"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/Contact2.png"),
                    ),
                    title: Text("Maria"),
                    subtitle: Text("326788778"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/Contact.png"),
                    ),
                    title: Text("Maichel"),
                    subtitle: Text("7832782321"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person.png"),
                    ),
                    title: Text("Meera"),
                    subtitle: Text("8285822263"),
                    trailing: Icon(Icons.call))),
            Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/person2.png"),
                    ),
                    title: Text("Midhun"),
                    subtitle: Text("7657272687"),
                    trailing: Icon(Icons.call))),
            Divider(color: Colors.redAccent,thickness: 23.0,)

          ],
        ));
  }
}
