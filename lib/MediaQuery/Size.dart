import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:  Size_(),
    debugShowCheckedModeBanner: false,
  ));
}
class Size_ extends StatelessWidget{
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
height = size.height;
width = size.width;
    return Scaffold(
     appBar: AppBar(title: Text("Media query seminar"),
       backgroundColor: Colors.green,
     ),
     body: Center(
       child: Container(
         color: Colors.yellowAccent,
         height: height * .5,
         width: width* .5,
       ),
     ),
   );
  }

}