/*import 'package:app_gestion_camaroneras/app/data/models/response/response_swimming_pool_model.dart';

class ResponseTicketModel {
  ResponseTicketModel({
    this.tickets,
  });

  List<Ticket>? tickets;

  factory ResponseTicketModel.fromJson(Map<String, dynamic> json) =>
      ResponseTicketModel(
        tickets: List<Ticket>.from(
          json["tickets"].map(
            (x) => Ticket.fromJson(x),
          ),
        ),
      );

/*   Map<String, dynamic> toJson() => {
        "tickets": List<dynamic>.from(
          tickets.map(
            (x) => x.toJson(),
          ),
        ),
      }; */
}

class Ticket {
  Ticket({
    this.id,
    this.name,
    this.stageId,
    this.actionId,
    this.devices,
  });

  int? id;
  String? name;
  List<Item>? stageId;
  List<Item>? actionId;
  List<Devices>? devices;

  factory Ticket.fromJson(Map<String, dynamic> json) => Ticket(
        id: json["id"],
        name: json["name"],
        stageId: List<Item>.from(
          json["stage_id"].map(
            (x) => Item.fromJson(x),
          ),
        ),
        actionId: List<Item>.from(
          json["action_id"].map(
            (x) => Item.fromJson(x),
          ),
        ),
        devices: List<Devices>.from(
          json["device_id"].map(
            (x) => Devices.fromJson(x),
          ),
        ),
      );

/*   Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "stage_id": List<dynamic>.from(stageId.map((x) => x.toJson())),
        "action_id": List<dynamic>.from(actionId.map((x) => x.toJson())),
        "device_id": List<dynamic>.from(deviceId.map((x) => x.toJson())),
      }; */
}

class Item {
  Item({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
      );

/*   Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      }; */
}
*/