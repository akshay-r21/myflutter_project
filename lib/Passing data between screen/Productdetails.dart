import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/Passing%20data%20between%20screen/Dummydata.dart';
void main(){
  runApp(MaterialApp(
    home:  Product_details(),
  ));
}

class Product_details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((mapfromlist) => mapfromlist["id"] == id);
    return Scaffold(
appBar: AppBar(title: Text("Product details"),),
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(product["image"],width: 100,height: 100,),
            Text(product["name"] ,style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            Text(product["Description"]),
            Text("${product['Price']}"),
            Text("${product['Rating']}"),

          ],
        ),
      ),
  );
  }

}