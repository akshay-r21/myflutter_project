import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: Clipper_widget(),
    debugShowCheckedModeBanner: false,
  ));
}

class Clipper_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper widget"),
      ),
      body: ListView(
        children: [
          ClipRect(
            //clipper: ,
            child: Align(
              widthFactor: .2,
              heightFactor: .4,
              child: Image.network(
                "https://media.istockphoto.com/id/1403278751/photo/abstract-particle-background.jpg?s=2048x2048&w=is&k=20&c=dulbgDt55zjh_2vCbxinindcal4f9HiwIYt4Ke5HJ8g=",
                //  fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Align(
              heightFactor: .5,
              widthFactor: .5,
              child: Image.network(
                  "https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
          ClipOval(
            child: Align(
                heightFactor: .5,
                widthFactor: .5,
                child: Image.network(
                    "https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")),
          ),
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Align(
              heightFactor: 1,
              widthFactor: .9,
              child: Container(
                height: 100,
                color: Colors.cyan,
                child: Center(child: Text("Diagonalclipper")),
              ),
            ),
          ),
          ClipPath(
            clipper: WaveClipperOne(),
            child: Align(
              heightFactor: 1,
              widthFactor: .9,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.cyan,
                child: Center(child: Text("Wave Clipper")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
