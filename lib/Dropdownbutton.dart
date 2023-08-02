import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Dropdown_button(),
    debugShowCheckedModeBanner: false,
  ));
}
class Dropdown_button extends StatefulWidget{
  @override
  State<Dropdown_button> createState() => _Dropdown_buttonState();
}
class _Dropdown_buttonState extends State<Dropdown_button> {
  List<String> items = <String>[
    "India",
    "Usa",
    "Uk",
    'China',
    "Korea"
  ];
  String dropdownvalue = "India";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Button"),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child:  Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Enter your nationality"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButton<String>(
          value: dropdownvalue,
          icon: const Icon(Icons.arrow_drop_down),
    iconSize: 20,
    elevation: 16,
    style: const TextStyle(color: Colors.black),
    underline: Container(
    height: 2,
    color: Colors.deepPurple,
    ),
    onChanged: (String? value) {
    setState(() {
      dropdownvalue = value!;
    });
    },
    items: items.map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
      ),
            ),
        ]
        )
      )
    );
  }
}