import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewbuilder(),
  ));
}

class Gridviewbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.red,
              child: Center(
                  child: Text(
                "User $index",
                style: TextStyle(fontSize: 14),
              )),
            );
          }),
    );
  }
}
