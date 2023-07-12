import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_Separator(),
  ));
}

class ListView_Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview 3"),
      ),
      body: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: Text("Hello"),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 5 == 0) {
              return const Divider(
                color: Colors.black,
                thickness: 10,
              );
            }
            return Text("");
          },
      ),
    );
  }
}
