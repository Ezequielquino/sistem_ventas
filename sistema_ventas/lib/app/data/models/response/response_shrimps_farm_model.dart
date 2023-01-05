/*import 'package:app_gestion_camaroneras/app/data/models/response/exceptions/shrimps_farm_exception_model.dart';
import 'package:app_gestion_camaroneras/app/services/database/execute_sqlite.dart';
import 'package:app_gestion_camaroneras/app/services/database/tables.dart';

class ResponseShrimpsFarmModel {
  ResponseShrimpsFarmModel({
    this.data,
    this.exception,
  });

  List<ShrimpsFarm>? data;
  ShrimpsFarmExceptionModel? exception;

  factory ResponseShrimpsFarmModel.fromJson(Map<String, dynamic> json) =>
      ResponseShrimpsFarmModel(
        exception: json["data"] == null
            ? ShrimpsFarmExceptionModel.fromJson(json)
            : null,
        data: json["data"] != null
            ? List<ShrimpsFarm>.from(
                json["data"].map(
                  (x) => ShrimpsFarm.fromJson(x),
                ),
              )
            : null,
      );

/*   Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(
          data!.map(
            (x) => x.toJson(),
          ),
        ),
      }; */
}

class ShrimpsFarm extends ExecuteSqlite {
  ShrimpsFarm({
    this.id,
    this.name,
    this.pondIds,
    this.numSwimmingPool,
  }) : super(shrimpsFarmTable);

  int? id;
  String? name;
  List<PondId>? pondIds;
  int? numSwimmingPool;

  factory ShrimpsFarm.fromJson(Map<String, dynamic> json) => ShrimpsFarm(
        id: json["id"],
        name: json["name"],
        pondIds: List<PondId>.from(
          json["pond_ids"].map(
            (x) => PondId.fromJson(x),
          ),
        ),
      );
/*       
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "pond_ids": List<dynamic>.from(
          pondIds!.map(
            (x) => x.toJson(),
          ),
        ),
      }; */
  factory ShrimpsFarm.fromSqlite(Map<String, dynamic> json) => ShrimpsFarm(
        id: json["id"],
        name: json["name"],
        numSwimmingPool: json["num_swimming_pool"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "num_swimming_pool": pondIds?.length,
      };
}

class PondId {
  PondId({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory PondId.fromJson(Map<String, dynamic> json) => PondId(
        id: json["id"],
        name: json["name"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}*/
