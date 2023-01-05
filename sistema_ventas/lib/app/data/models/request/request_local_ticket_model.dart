/*import 'package:app_gestion_camaroneras/app/services/database/execute_sqlite.dart';
import 'package:app_gestion_camaroneras/app/services/database/tables.dart';

class RequestLocalTicketModel extends ExecuteSqlite {
  RequestLocalTicketModel({
    this.deviceName,
    this.deviceId,
    this.origin,
    this.symptomId,
    this.symptomName,
    this.username,
    this.userId,
    this.comment,
    this.stageId,
    this.stageName,
    this.shrimpsFarmId,
    this.shrimpsFarmName,
    this.swimmingPoolId,
    this.swimmingPoolName,
    this.synchronization,
    this.createDate,
  }) : super(ticketTable);

  String? deviceName;
  String? deviceId;
  String? origin;
  int? symptomId;
  String? symptomName;
  String? username;
  int? userId;
  String? comment;
  int? stageId;
  String? stageName;
  int? shrimpsFarmId;
  String? shrimpsFarmName;
  int? swimmingPoolId;
  String? swimmingPoolName;
  String? synchronization;
  String? createDate;

  Map<String, dynamic> toMap() => {
        "device_name": deviceName,
        "device_id": deviceId,
        "origin": origin,
        "symptom_id": symptomId,
        "symptom_name": symptomName,
        "username": username,
        "user_id": userId,
        "comment": comment,
        "stage_id": stageId,
        "stage_name": stageName,
        "shrimps_farm_id": shrimpsFarmId,
        "shrimps_farm_name": shrimpsFarmName,
        "swimming_pool_id": swimmingPoolId,
        "swimming_pool_name": swimmingPoolName,
        "synchronization": synchronization,
        "create_date": createDate,
      };

  Map<String, dynamic> toMapServer() => {
        "device_name": deviceName,
        "device_id": deviceId,
        "origin": origin,
        "symptom_id": symptomId,
        "username": username,
        "user_id": userId,
        "comment": comment
      };
}*/
