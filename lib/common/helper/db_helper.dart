import 'package:sqflite/sqflite.dart' as sql;
import 'package:todo_app_riverpod/common/models/task_model.dart';

class DBHelper {
  static Future<void> createTable(sql.Database database) async {
    // Query to create todos table
    await database.execute(
      "CREATE TABLE todos("
      "id INTEGER PRIMARY KEY AUTOINCREMENT,"
      "title STRING, desc TEXT, date STRING,"
      "startTime STRING, endTime STRING,"
      "remind INTEGER, repeat STRING,"
      "isCompletd INTEGER)",
    );

    // Query to create user table
    await database.execute(
      "CREATE TABLE user("
      "id INTEGER PRIMARY KEY AUTOINCREMENT DEFAULT 0,"
      "isVerified INTEGER)",
    );
  }

  // Query to create the database
  static Future<sql.Database> db() {
    return sql.openDatabase('todoDatabase', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  // Query to create items (todos)
  static Future<int> createItem(TaskModel task) async {
    final db = await DBHelper.db();
    final id = await db.insert(
      "todos",
      task.toJson(),
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
    return id;
  }

  // Method to get user
  static Future<List<Map<String, dynamic>>> getUser() async {
    final db = await DBHelper.db();
    return db.query("user", orderBy: "id");
  }

  // Method to get todos items
  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await DBHelper.db();
    return db.query("todos", orderBy: "id");
  }

// Method to get single todo item
  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await DBHelper.db();
    return db.query("todos", where: "id =?", whereArgs: [id], limit: 1);
  }
}
