import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listviewseperatd(),
  ));
}

class Listviewseperatd extends StatelessWidget {
  var Months = [
    "January",
    "Advertisement",
    "feb",
    "march",
    "april",
    "may",
    "Advertisement",
    "june",
    ",july",
    "august",
    "september",
    "october",
    "Advertisement",
    "november",
    "december"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listseperated"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Text(
                    Months[index],
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              if (index % 5 == 0) {
                return const Card(
                  elevation: 2,
                  color: Colors.red,
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Text(
                      "Advertisement",
                      style: TextStyle(fontSize: 20, color: Colors.cyan),
                    ),
                  ),
                );
              }
              return SizedBox();
            },
            itemCount: Months.length));
  }
}
