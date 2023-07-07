import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
  home: Listview1(),
));
}

class Listview1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hrllo"),),
      body: ListView.builder(
          itemCount :10,
          itemBuilder: (context,index){// when content is unkonwn this else that
        return Card(
         child: ListTile(
           leading: Image.asset("Assets/Icons/person2.png"),
           title: Text("dfdg"),//can use list for having different name
           subtitle: Text("hello"),
           trailing: Text("11:00"),
         ),
        );
      }),
    );
  }

}