import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myflutter_project/Listviewbuilder.dart';
import 'package:myflutter_project/Passing%20data%20between%20screen/Dummydata.dart';
import 'package:myflutter_project/Passing%20data%20between%20screen/Productdetails.dart';

void main(){
  runApp(MaterialApp(
    home: Product_list(),
    debugShowCheckedModeBanner: false,
    routes: {
"details" : (context) => Product_details()
    },
  ));
}
class Product_list extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("My product"),),
    body: ListView(
      padding: EdgeInsets.all(15),
      children: products.map((e) {
        return ListTile(
        leading: Image.asset(e["image"]),
          title: Text(e["name"]),
         // subtitle: Text(e["Price"])o
          onTap: ()=> gotodetails(context,e["id"]),
      );
      }
      ).toList(),
    ),
  );
  }

 void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details",arguments: id);
 }

}