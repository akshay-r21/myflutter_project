import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_custom(),
  ));
}

class List_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("custom"),
        ),
        body:
            //ListView.custom(childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Text("hello")))),
            //ListView.custom(childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Text("hello"),
            // Text("hello"),
            // Text("hello"),
            // Text("hello"),
            // Text("hello"),
            // Text("hello"),))),

            ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 50,
                    (context, index) =>  const Text("Hello"))));
  }
}
