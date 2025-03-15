import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class My_database{
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'first_databse.db');
    return await openDatabase(databasePath);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "first_databse.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'first_databse.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String,dynamic>>> getdata() async {
    Database db=await initDatabase();
    List<Map<String,dynamic>> userList=await db.rawQuery("select * from user_table");
    
    return userList;
  }

  Future<int> insertUser(Map<String,dynamic> map) async {
    Database db=await initDatabase();
    int userList=await db.insert("user_table",map);

    return userList;
  }
  Future<int> deleteUser(int userId) async {
    Database db=await initDatabase();
    int delete=await db.delete("user_table",where: "userId=?",whereArgs: [userId]);

    return delete;
  }

  Future<int> updateUser(Map<String,dynamic> map) async {
    Database db=await initDatabase();
    int update=await db.update("user_table",map,where: "userId=?",whereArgs: [map["userId"]]);

    return update;
  }



}