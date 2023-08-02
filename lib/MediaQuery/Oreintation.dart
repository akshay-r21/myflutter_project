import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:  OrientationSample(),
    debugShowCheckedModeBanner: false,
  ));
}
class OrientationSample extends StatelessWidget{
  var orientation,height,width;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
   return Scaffold(
     appBar: AppBar(
       title: Text(" Orientation Media query"),
       backgroundColor: Colors.green,
     ),
     body : orientation == Orientation.portrait
     ? Container(
       color: Colors.blue,
       height: height/2,
       width: width/2,
     )
         :
         Container(
           height: height/2,
           width: width/2,
           color: Colors.red,
         )
   );
  }

}