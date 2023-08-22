import 'package:hive/hive.dart';
part 'user_modal.g.dart';

@HiveType(typeId: 0)
class User {

  @HiveField(0)
  final String email;

  @HiveField(1)
  final String passsword;

  @HiveField(2)
  String? id;

  @HiveField(3)
  String? name;

  @HiveField(4)
  String? age;

  User({required this.email, required this.passsword,this.name,this.age}) {
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}
