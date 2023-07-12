import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var names = [
    "anu",
    "tinu",
    "rinu",
    "sonu",
    "manu",
    "anu",
    "tinu",
    "rinu",
    "sonu",
    "manu"
  ];
  var images = [
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
    ("Assets/Icons/person2.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
          children: List.generate(
              10,
              (index) => Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(images[index])),
                       title: Text(names[index]),
                      subtitle: Text("hi "),
                      trailing: Text("11:02"),
                    ),
                  ))),
    );
  }
}
