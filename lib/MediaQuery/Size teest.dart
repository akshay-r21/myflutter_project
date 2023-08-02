import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:  Size_test(),
    debugShowCheckedModeBanner: false,
  ));
}
class Size_test extends StatefulWidget {
  @override
  State<Size_test> createState() => _Size_testState();
}

class _Size_testState extends State<Size_test> {
  @override
  Widget build(BuildContext context) {
    var screenh = MediaQuery
        .of(context)
        .size
        .height;
    var screenw = MediaQuery
        .of(context)
        .size
        .width;
    var screeno = MediaQuery
        .of(context)
        .orientation;

    return Scaffold(
        appBar: AppBar(title: Text("Media Query "),
          centerTitle: true,),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "this device $screenh and $screenw"
            ),
            SizedBox(
              height: 20,
            ),
            screenw >= 1280 && screenh >= 720
                ? Container(
              height: 100,
              width: 700,
              color: Colors.red,)
                :Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,

            ),
            screeno == Orientation.portrait
            ? const Text(
              "this device is in portrait"
            )
                : const Text("this device in landscape")
          ],
        ),
        ));
  }
}
