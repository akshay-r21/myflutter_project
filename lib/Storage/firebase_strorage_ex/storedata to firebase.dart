import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Firebaseeee(),  
    debugShowCheckedModeBanner: false,
  ));
}

class Firebaseeee extends StatefulWidget {
  const Firebaseeee({Key? key}) : super(key: key);

  @override
  State<Firebaseeee> createState() => _FirebaseeeeState();
}

class _FirebaseeeeState extends State<Firebaseeee> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: () => upload("camera"),
                  icon: Icon(Icons.camera_alt),
                  label: Text("camera")),
              ElevatedButton.icon(
                  onPressed: () => upload('gallery'),
                  icon: Icon(Icons.photo),
                  label: Text("Gallery"))
            ],
          ),
          Expanded(
              child: FutureBuilder(
                  future: loadData(),
                  builder: (context,
                      AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length?? 0,
                          itemBuilder: (context, index) {
                        final Map<String,dynamic> image = snapshot.data![index];
                        return Card(
                          child:  ListTile(
                            leading: Image.network(image["url"]),
                            title:  Text(image['uploaded by']),
                            subtitle: Text(image['description']),
                            trailing: IconButton(onPressed: (){
                              deleteImage(image['path']);
                            }, icon: Icon(Icons.delete)),

                          ),
                        );
                      });
                    }
                    return Center(child: CircularProgressIndicator());
                  }))
        ]),
      ),
    );
  }

  Future<List<Map<String , dynamic>>> loadData() async {
    List<Map<String,dynamic>> images = [] ;
    final ListResult result = await storage.ref().list();
    final List<Reference>  allfiles = result.items;

    await Future.forEach(allfiles, (singleFile) async {
      final String fileurl = await singleFile.getDownloadURL();
      final FullMetadata filemeta = await singleFile.getMetadata();

      images.add({
        'url' : fileurl,
        'path' : singleFile.fullPath ,
        'uploaded_by' : filemeta.customMetadata?['uploaded by'] ?? 'No data',
        'description' : filemeta.customMetadata?['description'] ?? 'No description'
       });
    });
    return images;
  }

  Future<void> upload(String imginput) async {
    final picker = ImagePicker();
    XFile? pickedImage; //store image platform dependant image path
    try {
      pickedImage = await picker.pickImage(
          source:
              imginput == 'camera' ? ImageSource.camera : ImageSource.gallery,
          maxWidth: 1980,
          maxHeight: 3400);
      final String filename = path.basename(pickedImage!.path);
      File imageFile = File(pickedImage.path);
      try {
        await storage.ref(filename).putFile(
            imageFile,
            SettableMetadata(customMetadata: {
              'uploaded by': 'it sesas',
              'description': 'kdhqhfhfeEnfkn'
            }));
        setState(() {});
      } on FirebaseException catch (e) {
        print(e);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteImage(String imagepath) async{
    await storage.ref(imagepath).delete();
  }
}
