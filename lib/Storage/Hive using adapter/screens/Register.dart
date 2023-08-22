import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflutter_project/Storage/Hive%20using%20adapter/Database%20db/hivedb.dart';
import 'package:myflutter_project/Storage/Hive%20using%20adapter/modals/user_modal.dart';
import 'package:myflutter_project/Storage/Hive%20using%20adapter/screens/Login.dart';

class HiveReg extends StatelessWidget {
  final hemail = TextEditingController();
  final hpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: const Text("Hive Registration"),
      ),*/
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const   Center(child:  Text("Registration" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))
        ,
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: hemail,
              decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "Email"),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: hpass,
              decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "Password"),
            ),
          ),
          SizedBox(height: 20,),

          ElevatedButton(
              onPressed: () async {
                // final user_existList = await HiveDb.instance.getUser();
                final user_existList = await HiveDb.instance.getUser();
                validateRegistration(user_existList);
                hpass.text = "";
                hemail.text = "";
              },
              child: const Text("Register Here"))
        ],
      ),
    );
  }
  void validateRegistration(List<User> user_exiatList) async {
    final eemail = hemail.text.trim();
    final epwd = hpass.text.trim();
    bool userFound = false;

    final validateEmail = EmailValidator.validate(
        eemail); // if entered email is valid then true will be returned

    if (eemail != "" && epwd != "") {
      if (validateEmail == true) {
        //iterate all the user from hive and assign it to userfromhive one by one
        await Future.forEach(user_exiatList, (userfromhive) {
          if (userfromhive.email == eemail) {
            //email from hive == email that we entered
            userFound = true;
          } else {
            userFound = false;
          }
        });
        if (userFound == true) {
          Get.snackbar("Error", "User already Registered / Exist",
              colorText: Colors.red);
        } else {
          final pwdvalidation = checkPassword(epwd);
          if (pwdvalidation == true) {
            final user = User(email: eemail, passsword: epwd);
            await HiveDb.instance.addUser(user);
            Get.to(HiveLogin());
            Get.snackbar("Success", "Registration Successful",
                colorText: Colors.green);
          }
        }
      } else {
        Get.snackbar("Error", 'Enter a Valid Email!!',
            colorText: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Fields Must Not be Empty",
          colorText: Colors.red);
    }
  }

  bool checkPassword(String epwd) {
    if (epwd.length < 6) {
      Get.snackbar("Error", "Password length error",
          colorText: Colors.red);
      return false;
    } else {
      return true;
    }
  }
}