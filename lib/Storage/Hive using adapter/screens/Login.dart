import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myflutter_project/Storage/Hive%20using%20adapter/Database%20db/hivedb.dart';
import 'package:myflutter_project/Storage/Hive%20using%20adapter/modals/user_modal.dart';
import 'package:myflutter_project/Storage/Hive%20using%20adapter/screens/Register.dart';
import 'Home.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(GetMaterialApp(home: HiveLogin(),
    debugShowCheckedModeBanner: false,));
}
class HiveLogin extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              const   SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            const   SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const   SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: ()  async{
                final usersList = await HiveDb.instance.getUser();
                checkUserExist(usersList);
              }, child: Text('Login')),
              const   SizedBox(
                height: 8,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(HiveReg());
                  },
                  child: Text("Not a user?Register now"))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkUserExist(List<User> usersList) async{
    final lemail = email.text.trim();
    final lpass = pass.text.trim();

    bool userFound = false;
    if(lemail !=  " " && lpass != ""){
      await Future.forEach(usersList, (regUserFromHive){
        if(lemail == regUserFromHive.email && lpass == regUserFromHive.passsword){
          userFound = true;
        }else
          {
            userFound  = false;
          }
      });
      if(userFound == true){
        Get.offAll(()=> HiveHome(email : lemail));
        Get.snackbar("Success", "Login successful" ,colorText: Colors.green);
      }
      else{
        Get.snackbar("Error", "No User Found",colorText: Colors.red);
      }
    }else{
      Get.snackbar("Error", "Fields are empty",colorText: Colors.red);
    }
  }
}
