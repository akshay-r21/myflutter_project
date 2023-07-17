import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview3(),
  ));
}

class Gridview3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 30,
        mainAxisSpacing: 40,
        crossAxisCount: 4,
        children: List.generate(
            20,
            (index) => Container(
                decoration: BoxDecoration(color: Colors.black),
               // color: Colors.red,
                child: Column(
                  children: [
                    Image.asset(
                      "Assets/Icons/Contact.png",
                      height: 70,
                    ),
                    Text("Contact ",style: TextStyle(color: Colors.red),)
                  ],
                ))),
      ),
    );
  }
}
