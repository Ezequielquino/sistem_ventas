/*import 'package:app_gestion_camaroneras/app/services/database/tables.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Db {
  String name = "WorkingDatabase";
  int version = 1;

  Future<Database> open() async {
    String path = join(await getDatabasesPath(), name);
    print(path);
    return openDatabase(
      path,
      version: version,
      onCreate: onCreate,
    );
  }

  onCreate(Database db, int version) async {
    for (var script in tables) {
      await db.execute(script);
    }
  }
}*/
