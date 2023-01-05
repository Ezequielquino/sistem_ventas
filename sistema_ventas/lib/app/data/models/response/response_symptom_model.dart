/*import 'package:app_gestion_camaroneras/app/services/database/execute_sqlite.dart';
import 'package:app_gestion_camaroneras/app/services/database/tables.dart';

class ResponseSymptomModel {
  ResponseSymptomModel({
    this.data,
  });

  List<Symptom>? data;

  factory ResponseSymptomModel.fromJson(Map<String, dynamic> json) =>
      ResponseSymptomModel(
        data: List<Symptom>.from(
          json["data"].map(
            (x) => Symptom.fromJson(x),
          ),
        ),
      );
}

class Symptom extends ExecuteSqlite {
  Symptom({
    this.id,
    this.name,
    this.code,
  }) : super(symptomTable);

  int? id;
  String? name;
  String? code;

  factory Symptom.fromJson(Map<String, dynamic> json) => Symptom(
        id: json["id"],
        name: json["name"],
        code: json["code"],
      );
  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "code": code,
      };
}*/
