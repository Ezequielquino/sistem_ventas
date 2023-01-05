/*import 'package:app_gestion_camaroneras/app/services/database/execute_sqlite.dart';
import 'package:app_gestion_camaroneras/app/services/database/tables.dart';

class ResponseStatusModel {
  ResponseStatusModel({
    this.data,
  });

  List<Status>? data;

  factory ResponseStatusModel.fromJson(Map<String, dynamic> json) =>
      ResponseStatusModel(
        data: List<Status>.from(
          json["data"].map(
            (x) => Status.fromJson(x),
          ),
        ),
      );
}

class Status extends ExecuteSqlite {
  Status({
    this.id = 0,
    this.name = "",
    this.sequence = 0,
  }) : super(stageTable);

  late int id;
  late String name;
  late int sequence;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"],
        name: json["name"],
        sequence: json["sequence"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "sequence": sequence,
      };

  //Implement functions by SQLITE
/*   save(Map<String, dynamic> toMap) async {
    return await create(toMap);
    //return (id > 0) ? await update(toMap()) : await create(toMap());
  } */
}*/
