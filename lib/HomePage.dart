import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: GoogleFonts.poppins(
            fontSize: 30,
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Home",
              style: GoogleFonts.poppins(
                fontSize: 30,
              ),
            ),
          ),
          const Card(
            child: ListTile(leading: CircleAvatar(
                backgroundImage: AssetImage("Assets/Icons/orange.png",),
              ),
              title: Text("Orange"),
              subtitle: Text("\$200"),
           //   trailing: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            ),),
          const Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("Assets/Icons/pineapple.png")),
                title: Text("Pineapple"),
                subtitle: Text("\$200"),
                trailing: Icon(Icons.shopping_cart),
              )),
          const Card(
              color: Colors.redAccent,
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("Assets/Icons/mango.png")),
                title: Text("Pineapple"),
                subtitle: Text("\$200"),
                trailing: Icon(Icons.shopping_cart),
              )),
          const Card(
              child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Icons/grapes.png")),
                  title: Text("Grapes"),
                  subtitle: Text("\$200"),
                  trailing: Icon(Icons.shopping_cart))),
        ],
      ),
    );
  }
}
