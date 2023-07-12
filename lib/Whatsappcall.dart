import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Whatsappcall(),
  ));
}

class Whatsappcall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     /*appBar: AppBar(
       backgroundColor: const Color(0xff0128C7E),
       title: Text("Whatsapp",),
       actions: [
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
                 PopupMenuItem(child: Text("Clear call log")),
                 PopupMenuItem(child: Text("Settings")),
               ];
             })
       ],
     ),*/
     backgroundColor:  const Color(0xff075E54),
   body: ListView(
     children: [
       ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage("Assets/Icons/Contact.png"),
         ),
         title: Text("Create  a call link"),
         subtitle: Text("Share link for your whatsapp call"),
       ),
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: Text("Recent ",style: GoogleFonts.poppins(fontSize: 15,),),
       ),
       ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage("Assets/Icons/junk.png"),),
       title: Text("Shaji"),
         subtitle: Text("Yeterday,23 : 03"),
         trailing: Icon(Icons.call),
       )
     ],
   ),
   );
  }

}