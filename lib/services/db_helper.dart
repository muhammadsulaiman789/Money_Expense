import 'package:money_expense/models/category.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class DbHelper {
  static DbHelper _dbHelper;
  static Database _database;

  DbHelper._createObject();

  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper;
  }

  Future<Database> initDb() async {


    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'expense.db';


    var todoDatabase = openDatabase(path, version: 1, onCreate: _createDb);


    return todoDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE contact (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        category TEXT,
        date TEXT,
        nominal TEXT
      )
    ''');
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDb();
    }
    return _database;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var mapList = await db.query('expense', orderBy: 'name');
    return mapList;
  }


  Future<int> insert(Category object) async {
    Database db = await this.database;
    int count = await db.insert('expense', object.toMap());
    return count;
  }

  Future<int> update(Category object) async {
    Database db = await this.database;
    int count = await db.update('expense', object.toMap(),
        where: 'id=?',
        whereArgs: [object.id]);
    return count;
  }


  Future<List<Category>> getContactList() async {
    var contactMapList = await select();
    int count = contactMapList.length;
    List<Category> contactList = List<Category>();
    for (int i=0; i<count; i++) {
      contactList.add(Category.fromMap(contactMapList[i]));
    }
    return contactList;
  }

}