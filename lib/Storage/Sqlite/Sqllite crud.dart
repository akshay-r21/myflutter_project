/*
import 'package:flutter/material.dart';

import 'dboperation.dart';

void main() {
  runApp(MaterialApp(
    home: SqfliteCrud(),
  ));
}

class SqfliteCrud extends StatefulWidget {
  @override
  State<SqfliteCrud> createState() => _SqfliteCrudState();
}

class _SqfliteCrudState extends State<SqfliteCrud> {
  final name_controller = TextEditingController();
  final phone_controller = TextEditingController();
  var isloadings = true;
  List<Map<String, dynamic>> contacts = [];

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    final data = await SQLHelper.readData();
    setState(() {
      contacts = data;
      isloadings = false;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
        ),
        floatingActionButton:
            //here null means create contact id is null
            FloatingActionButton(
                onPressed: () => showSheet(null), child: Icon(Icons.add)),
        body: isloadings
            ? const Center(
                child: Text("No Data"),
              )
            : ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(contacts[index]["names"]),
                      subtitle: Text(contacts[index]["phone"]),
                      trailing: Wrap(
                        children: [
                          IconButton(
                            onPressed: () {
                              showSheet(contacts[index]["id"]);
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              deleteContact(contacts[index]["id"]);
                            },
                            icon: Icon(Icons.delete),
                          )
                        ],
                      ),
                    ),
                  );
                }));
  }

  void showSheet(int? id) {
    if (id != null) {
      final data_from_that_id = contacts.firstWhere(
          (element) => element["id"] == id); //element["id"] => id from database
      name_controller.text = data_from_that_id['name'];
      phone_controller.text = data_from_that_id['phone'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(hintText: "Name"),
                ),
                TextField(
                  controller: phone_controller,
                  decoration: InputDecoration(hintText: "Phone Number"),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await createContact();
                      }
                      if (id != null) {
                        await updateContact(id);
                      }
                      Navigator.of(context).pop();
                      name_controller.text = "";
                      phone_controller.text = '';
                    },
                    child:
                        Text(id == null ? "Create Contact" : "Update Contact"))
              ],
            ),
          );
        });
  }

  Future<void> createContact() async {
    await SQLHelper.create_contact(name_controller.text, phone_controller.text);
    loadData();
  }

  Future<void> updateContact(int? id) async {
    await SQLHelper.updateContact(
        id, name_controller.text, phone_controller.text);
    loadData();
  }

  void deleteContact(int? id) async {
    await SQLHelper.deleteData(id);
    loadData();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Successfully deleted")));
  }
}
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_project/Storage/Sqlite/dboperation.dart';

class SqfliteCrud extends StatefulWidget {
  @override
  State<SqfliteCrud> createState() => _SqfliteCrudState();
}

class _SqfliteCrudState extends State<SqfliteCrud> {
  final name = TextEditingController();
  final phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSheet(null),
        child: Icon(Icons.add),
      ),
    );
  }

  void showSheet(int? id) {
    if (id != null) {

    }
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: context, builder: (context) {
      return Container(
        padding: EdgeInsets.only(
            top: 15,
            right: 15,
            left: 15,
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom + 120
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                  hintText: 'name'
              ),
            ),
            TextField(
              controller: phone,
              decoration: InputDecoration(
                  hintText: "phone"
              ),
            ),
            ElevatedButton(onPressed: () async {
              if (id == null) {
                await createContat();
              }
              if (id != null) {
                await updateContact();
              }
            }, child: Text(id == null ? "Create contact " : "Update contact"))
          ],
        ),
      );
    });
  }

  Future<void> createContat() async {
   await SQLHelper .create_contact(
       name.text,
       phone.text);
  }

  Future<void>  updateContact() async{

  }
}