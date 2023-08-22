import 'package:hive/hive.dart';
import 'package:myflutter_project/Storage/Hive%20using%20adapter/modals/user_modal.dart';

class HiveDb {
  HiveDb._internal();

 static HiveDb instance = HiveDb._internal();

  factory HiveDb() {
    return instance;
  }

   Future<List<User>> getUser() async{
    final db = await Hive.openBox<User>('userData');
    return db.values.toList();
    }
  Future<void> addUser(User user)  async{
    final db = await Hive.openBox('userData');
    db.put(user.id, user);
   }
}
