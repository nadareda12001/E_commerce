import 'package:flutter/cupertino.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../constants.dart';
import 'cart_model.dart';

class CartDatabaseHelper {
  CartDatabaseHelper._();
  static final CartDatabaseHelper dbHelper = CartDatabaseHelper._();
//create instance of database
  static Database? _database;
  Future<String> getDbPath() async {
    String dbpath = await getDatabasesPath();
    return join(dbpath, DbPathName);
  }

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initdb();

    return _database!;
  }

 Future<Database> initdb() async {
    String path = await getDbPath();
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(''' CREATE TABLE $tableCartProduct (
$columnName TEXT NOT NULL,
$columnImage TEXT NOT NULL,
$columnQuantity INTEGER NOT NULL,
$columnPrice TEXT NOT NULL,
$columnId INTEGER NOT NULL,) 
 ''');
    });
  }

  Future<List<CartProductModel>> getAllProducts()async{
    var dbClient = await database;
    List<Map> maps=await dbClient.query(tableCartProduct);
    List<CartProductModel>list=maps.isNotEmpty?
        maps.map((product) => CartProductModel.fromJson(product)).toList()
        :[];
    return list;
  }

  insert(CartProductModel model) async {
    var dbClient = await database;
    await dbClient.insert(tableCartProduct, model.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
