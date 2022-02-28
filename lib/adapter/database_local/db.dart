import 'package:financial_controll_flutter/adapter/database_local/script_db.dart';
import 'package:financial_controll_flutter/domain/entities/category.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Db {
  static Database? _database;

  static get() async {
    if (_database != null) {
      return _database;
    }

    var path = join(await getDatabasesPath(), ScriptDb.dbName);
    _database = await openDatabase(path, version: 1, onCreate: (db, v) {
      db.execute(ScriptDb.activeFOREIGN);
      db.execute(ScriptDb.user);
      db.execute(ScriptDb.debt);
      db.execute(ScriptDb.category);
      db.execute(ScriptDb.income);
    });
    return _database;
  }
}
