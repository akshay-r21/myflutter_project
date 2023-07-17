import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview4(),
    debugShowCheckedModeBanner: false,
  ));
}

class Gridview4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 20,mainAxisSpacing: 20),
          //different ways of creating childdelegate
          //way 1
          //childrenDelegate : SliverChildListDelegate([
          // Card(child : Text ("Hello ")),
          // Card(child : Text ("Hello "))])
          //way 2
          //  childrenDelegate : SliverChildListDelegate(List.  generate (10,(index) => Card(child : Text ("Hello "))))
          //way 3
          childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 20,
                  (context, index) => const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Card(color: Colors.green,
                  child: Center(child: Text("hello")),
                ),
          ))),
    );
  }
}
