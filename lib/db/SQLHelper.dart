import 'package:sqflite/sqflite.dart' as sql;

class SQLFunction {
  // create db
  static Future<sql.Database> openDb() async {
    return sql.openDatabase("userData", version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }

  static Future<void> createTable(sql.Database db) async {
    await db.execute(
        "CREATE TABLE users (id INTERGER PRIMARY KEY,name TEXT,email TEXT,password TEXT)");
  }

  static Future<int> createUser(
      String name, String userName, String password) async {
    final db = await SQLFunction.openDb();
    final id = db.insert(
        "userData", {"name": name, "email": userName, "password": password});
    return id;
  }

  static Future<List<Map<String, dynamic>>> readData() async {
    final db = await SQLFunction.openDb();
    return db.query("SELECT * FROM users");
  }

  static Future<List<Map>> checkLogin(String email,String password) async {
    final db = await SQLFunction.openDb();
    final data = await  db.rawQuery("SELECT * FROM users WHERE email = $email AND password = $password ");
  print(data.toString());
  if(data.isEmpty){
    return data;
  }
  return data;
  }
}
