import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsappstatus(),
  ));
}

class Whatsappstatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff075E54),
     /* appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: const Color(0xff0128C7E),
        actions:   [
          Icon(Icons.photo_camera_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(surfaceTintColor: Color(0xff075E54),
              itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("Status Privacy")),
              PopupMenuItem(child: Text("Settings")),
            ];
          })
        ],),
     */
      body: ListView(
        children:  [
         const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text(
              "My Status",
            ),
            subtitle: Text("29 minutes ago "),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Recent Updates"  , style: GoogleFonts.poppins(fontSize: 15),),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const    ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          ),
          const  ListTile(
            tileColor: Color(0xff075E54),
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/Icons/person.png"),
            ),
            title: Text("Alen"),
            subtitle: Text("29 minutes ago "),
          )
        ],
      ),
    );
  }
}
