/*import 'package:app_gestion_camaroneras/app/services/database/execute_sqlite.dart';
import 'package:app_gestion_camaroneras/app/services/database/tables.dart';

class ResponseSwimmingPoolModel {
  ResponseSwimmingPoolModel({
    this.data,
  });

  List<SwimmingPool>? data;

  factory ResponseSwimmingPoolModel.fromJson(Map<String, dynamic> json) =>
      ResponseSwimmingPoolModel(
        data: List<SwimmingPool>.from(
          json["data"].map(
            (x) => SwimmingPool.fromJson(x),
          ),
        ),
      );
}

class SwimmingPool extends ExecuteSqlite {
  SwimmingPool({
    this.name,
    this.id,
    this.devices,
  }) : super(swimmingPoolTable);

  String? name;
  int? id;
  int? shrimpsFarmId;
  String? shrimpsFarmName;
  List<Devices>? devices;
  factory SwimmingPool.fromJson(Map<String, dynamic> json) => SwimmingPool(
        name: json["name"],
        id: json["id"],
        devices: json["device_ids"] != null
            ? List<Devices>.from(
                json["device_ids"].map(
                  (x) => Devices.fromJson(x),
                ),
              )
            : [],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "shrimps_farm_id": shrimpsFarmId,
        "shrimps_farm_name": shrimpsFarmName,
      };
}

class Devices extends ExecuteSqlite {
  Devices({
    this.id,
    this.name,
    this.externalId,
  }) : super(deviceTable);

  int? id;
  String? name;
  int? externalId;

  //Campos para relacion de tablas en SQLITE
  int? shrimpsFarmId;
  String? shrimpsFarmName;
  int? swimmingPoolId;
  String? swimmingPoolName;

  factory Devices.fromJson(Map<String, dynamic> json) => Devices(
        id: json["id"],
        name: json["name"],
        externalId: json["external_id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "external_id": externalId,
        "shrimps_farm_id": shrimpsFarmId,
        "shrimps_farm_name": shrimpsFarmName,
        "swimming_pool_id": swimmingPoolId,
        "swimming_pool_name": swimmingPoolName,
      };
}*/
