import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stack_widget(),
    debugShowCheckedModeBanner: false,
  ));
}

class Stack_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Center(
        child: Stack(children: [
          Container(
            height: 250,
            width: 250,
            color: Colors.cyan,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellowAccent,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.purpleAccent,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image : DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1541701494587-cb58502866ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")),)
          ),
          Positioned(
           right: 20,
            bottom: 10,
            child: Container(
              height: 50,
              width: 50,
child: Text("rate is 40"),          ),
          ),
        ]),
      ),
    );
  }
}
