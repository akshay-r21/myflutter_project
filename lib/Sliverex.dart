import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sliverex(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sliverex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(  //wrapp with savearea widget
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("sliver appbar"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 30,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "search here",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: 70,
                child: Text("User $index",style: TextStyle(fontSize: 25),)),
          ))
        ],
      ),
    );
  }
}
