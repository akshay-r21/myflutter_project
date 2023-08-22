import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("todo_box");
  runApp(MaterialApp(
    builder: FToastBuilder(),
    home: crud_main(),
    debugShowCheckedModeBanner: false,
  ));
}

class crud_main extends StatefulWidget {
  @override
  State<crud_main> createState() => _crud_mainState();
}

class _crud_mainState extends State<crud_main> {
  List<Map<String, dynamic>> task = [];
  final t_name = TextEditingController();
  final t_content = TextEditingController();

//  creating hive box
  final box = Hive.box("todo_box");

  @override
  void initState() {
    refresh_or_read_task();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-do List"),
      ),
      body: task.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.task),
                    title: Text(task[index]['taskname']),
                    subtitle: Text(task[index]['taskcon']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              create_or_edit_task(task[index]['id']);
                            },
                            icon: Icon(Icons.edit)),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {
                              delete_task(task[index]["id"]);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => create_or_edit_task(null),
        label: Icon(Icons.add),
      ),
    );
  }

  void create_or_edit_task(int? itemkey) {
    //itemkey is similar to id in sqflite
    if (itemkey != null) {
      final existing_task =
          task.firstWhere((element) => element["id"] == itemkey);
      t_name.text = existing_task["taskname"];
      t_content.text = existing_task["taskcon"];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: t_name,
                    decoration: InputDecoration(
                        hintText: "Task Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: t_content,
                    decoration: InputDecoration(
                        hintText: "Task Content",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                    ),
                    onPressed: () {
                      if (itemkey == null) {
                        createTask({
                          "task_name": t_name.text.trim(),
                          "task_content": t_content.text.trim()
                        });
                      }
                      if (itemkey != null) {
                        editTask(itemkey,{
                          "taskname" : t_name.text.trim(),
                          "taskcon" : t_content.text.trim()
                        });
                      }
                      t_name.text = "";
                      t_content.text = "";
                      Navigator.pop(context);
                    },
                    child:
                        Text(itemkey == null ? " Create task " : "Edit Task"))
              ],
            ),
          );
        });
  }

  Future<void> createTask(Map<String, String> newtsak) async {
    await box.add(newtsak);
    refresh_or_read_task();
  }

  Future<void>  editTask(int itemkey ,Map<String, dynamic> editedtask) async{
    await  box.put(itemkey, editedtask);
    refresh_or_read_task();
  }

  void refresh_or_read_task() {
    //fetch all keys from hive in ascending order
    //key - individual item keys will be available at key
    final task_fron_hive = box.keys.map((key) {
      final map_of_that_singlw_key = box.get(key);
      return {
        'id': key,
        "taskname": map_of_that_singlw_key["task_name"],
        "taskcon": map_of_that_singlw_key['task_content']
      };
    }).toList();
    setState(() {
      task = task_fron_hive.reversed.toList();
    });
  }

  Future<void> delete_task(int itemkey) async {
    await box.delete(itemkey);
    refresh_or_read_task();
    //ScaffoldMessenger(child: child)
    Fluttertoast.showToast(msg: "Succesfully deleted",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 15.0
    );
  }
}
