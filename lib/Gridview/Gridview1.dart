import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:  Gridview1(),
    debugShowCheckedModeBanner: false,
  ));
}
class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
           //SliverGridDelegateWithMaxCrossAxisExtent( maxCrossAxisExtent: 200 ),
         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),
        children: List.generate(
            15, (index) =>  Card(color  : Colors.red ,child: Center(child: Text("Hello")))),
      ),
    );
  }
}
