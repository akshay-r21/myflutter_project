import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BackButton(),
  ));
}

class Backbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder: (context){
        return   AlertDialog(
          title: Text("Confirm exit !!!"),
          content: Text("Do you really want to exit "),
          actions: [
             TextButton(onPressed: (){
               Navigator.of(context).pop(true);
             }, child: Text("Yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("No")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("Cancel"))
          ],
        );
      });
    }
    return WillPopScope(
        child: Scaffold(
          body: Center(
            child: Text("press back button to exit"),
          ),
        ),
        onWillPop: showAlert);
  }

}
