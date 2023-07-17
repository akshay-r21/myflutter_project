import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview5(),
    debugShowCheckedModeBanner: false,
  ));
}

class Gridview5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.extent(
            maxCrossAxisExtent: 190,mainAxisSpacing: 20,crossAxisSpacing: 20,
            children:
                //Card(child: Center(child: Text("Hola mike"))),
                List.generate(
                    20,
                    (index) => Card(color: Colors.green,
                          child: Center(child: Text("hola mike")),
                        ))));
  }
}
