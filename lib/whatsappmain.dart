import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    //entire app bar colors changes
    home: Whatsapp(),
  ));
}

class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text(
          "Whatsapp",
        ),
        backgroundColor: Color(0xff0128C7E),
        actions:  [
          Icon(Icons.photo_camera_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
PopupMenuButton(itemBuilder: (context){
  return[
    PopupMenuItem(child: Text("New group")),
    PopupMenuItem(child: Text("New Broadcast")),
    PopupMenuItem(child: Text("Linked Devices")),
    PopupMenuItem(child: Text("Starred Messages")),
    PopupMenuItem(child: Text("Payments")),
    PopupMenuItem(child: Text("Settings")),

  ];
})        ],
      ),*/
      body: ListView(children: const [
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png")),
          title: Text("Alen"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
            ),
            SizedBox(width: 10),
            Text("hi ")
          ]),
          trailing:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("11:02"),
              SizedBox(width: 20),
              Icon(
                Icons.circle,
                color: Colors.green,
              ),
            ],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person2.png")),
          title: Text("Alex"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
            ),
            SizedBox(width: 10),
            Text("da evideya ")
          ]),
          trailing:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("11:02"),
              SizedBox(width: 20),
              Icon(
                Icons.circle,
                color: Colors.green,
              ),
            ],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/Contact.png")),
          title: Text("Alby"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
            ),
            SizedBox(width: 10),
            Text("Da ")
          ]),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("11:02"),
              SizedBox(width: 20),
              Icon(
                Icons.circle,
                color: Colors.green,
              ),            ],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png")),
          title: Text("Arun"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
            ),
            SizedBox(width: 10),
            Text('Nale free anno')
          ]),
          trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              Text("11:02"),
              SizedBox(width: 20),
              Icon(
                Icons.circle,
                color: Colors.green,
              ),
            ],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/Contact.png")),
          title: Text("Abi"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
            ),
            SizedBox(width: 10),
            Text("Oii ")
          ]),
          trailing: Column(
crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("11:02"),
              SizedBox(width: 20),
              Icon(
                Icons.circle,
                color: Colors.green,
              ),
            ],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/junk.png")),
          title: Text("Alen"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Text("ok da nale set ")
          ]),
          trailing: Wrap(
            direction: Axis.vertical,
            children: [SizedBox(width: 20), Text("09:02")],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person2.png")),
          title: Text("Eldho"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
            ),
            SizedBox(width: 10),
            Text("Ahh ")
          ]),
          trailing: Wrap(
            direction: Axis.vertical,
            children: [SizedBox(width: 20), Text("09:00")],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png")),
          title: Text("Anna"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Text("Ok di")
          ]),
          trailing: Wrap(
            direction: Axis.vertical,
            children: [SizedBox(width: 20), Text("Yesterday")],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/Contact2.png")),
          title: Text("Ashik"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Text("Ahda")
          ]),
          trailing: Wrap(
            direction: Axis.vertical,
            children: [SizedBox(width: 20), Text("Yesterday")],
          ),
        ),
        ListTile(
          tileColor: Color(0xff075E54),
          leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/Contact.png")),
          title: Text("Gopi"),
          subtitle: Wrap(direction: Axis.horizontal, children: [
            Icon(
              Icons.check,
              color: Colors.blue,
            ),
            SizedBox(width: 10),
            Text("Gn")
          ]),
          trailing: Wrap(
            direction: Axis.vertical,
            children: [SizedBox(width: 20), Text("Yesterday")],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.message),),

    );
  }
}
