import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Expansion_widget(),
  ));
}

class Expansion_widget extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.pink,
    Colors.orange,
    Colors.yellowAccent,
    Colors.green
  ];
  var names = [
    "red",
    "pink",
    "orange",
    "yellow",
    "green",
  ];

  @override
  Widget build(BuildContext context) {
    //  return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion tile"),
      ),
      body: Column(
        children: [
          ExpansionTile(
              title: Text("Colors"),
              subtitle: Text("List of colors"),
              children: List.generate(
                  5,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: colors[index],
                        ),
                        title: Text(names[index]),
                      ))),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1541701494587-cb58502866ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"))),
            child: ExpansionTile(
                title: Text("Colors"),
                subtitle: Text("List of colors"),
                children: List.generate(
                    5,
                    (index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: colors[index],
                          ),
                          title: Text(names[index]),
                        ))),
          )
        ],
      ),
    );
  }
}
