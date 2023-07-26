import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Drawer_widget(),
    debugShowCheckedModeBanner: false,
  ));
}
class Drawer_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Drawer")),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black12),
        child: Drawer(

          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(

                  color: Colors.white,
                  image:  DecorationImage(
                      fit : BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1541701494587-cb58502866ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"))
                ),
                accountName: const Text(
                  "Akshay",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                accountEmail: Text("aksahy@gmail.com"),
               currentAccountPicture: Image.asset('Assets/Icons/mango.png'),
                otherAccountsPictures: [
                  Column(
                    children: [
                      Image.asset('Assets/Icons/grapes.png',height: 20 ,width: 30,),
                      Image.asset('Assets/Icons/mango.png',height: 20 ,width: 30,),
                    ],
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Search"),
              ),  ListTile(
                leading: Icon(Icons.inbox),
                title: Text("Inbox"),
              ),  ListTile(
                leading: Icon(Icons.message),
                title: Text(" New Message"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
