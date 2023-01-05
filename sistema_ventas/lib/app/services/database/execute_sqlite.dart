/*import 'package:app_gestion_camaroneras/app/services/database/db.dart';
import 'package:sqflite/sqflite.dart';

abstract class ExecuteSqlite {
  String table;
  ExecuteSqlite(this.table);

  Future<Database> get database async {
    return await Db().open();
  }

  query(String where, {List<dynamic> arguments = const []}) async {
    return (await database).rawQuery("SELECT * FROM $table $where", arguments);
  }

  update(Map<String, dynamic> data) async {
    return (await database)
        .update(table, data, where: "id=?", whereArgs: [data["id"]]);
  }

  create(Map<String, dynamic> data) async {
    return (await database).insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  delete(String columns, {List<dynamic> arguments = const []}) async {
    return (await database).delete(
      table,
      where: columns,
      whereArgs: arguments,
    );
  }
}*/
