/*import 'package:app_gestion_camaroneras/app/services/database/execute_sqlite.dart';
import 'package:app_gestion_camaroneras/app/services/database/tables.dart';

class ResponseLocalTicketModel extends ExecuteSqlite {
  ResponseLocalTicketModel({
    this.uniqueId,
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

  int? uniqueId;
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

  factory ResponseLocalTicketModel.fromJson(Map<String, dynamic> json) =>
      ResponseLocalTicketModel(
        uniqueId: json["unique_id"],
        deviceName: json["device_name"],
        deviceId: json["device_id"],
        origin: json["origin"],
        symptomId: json["symptom_id"],
        symptomName: json["symptom_name"],
        username: json["username"],
        userId: json["user_id"],
        comment: json["comment"],
        stageId: json["stage_id"],
        stageName: json["stage_name"],
        shrimpsFarmId: json["shrimps_farm_id"],
        shrimpsFarmName: json["shrimps_farm_name"],
        swimmingPoolId: json["swimming_pool_id"],
        swimmingPoolName: json["swimming_pool_name"],
        synchronization: json["synchronization"],
        createDate: json["create_date"],
      );
}*/
