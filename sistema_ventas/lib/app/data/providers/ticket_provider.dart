/*import 'package:app_gestion_camaroneras/app/data/models/request/request_local_ticket_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/request/request_ticket_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_create_ticket_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_ticket_model.dart';
import 'package:app_gestion_camaroneras/app/services/storage_service.dart';
import 'package:app_gestion_camaroneras/core/network/dio_client.dart';
import 'package:app_gestion_camaroneras/core/utils/keys.dart';
import 'package:get/get.dart';

class TicketProvider {
  final _dioClient = Get.find<DioClient>();

  Future<ResponseTicketModel> getTickets(
    RequestTicketModel requestTicket,
  ) async {
    final company = await StorageService.get(Keys.kCompany);
    final response = await _dioClient.get(
      path: "/api/ticket/search/no-auth/$company/${requestTicket.clientId}",
    );
    return ResponseTicketModel.fromJson(response);
  }

  Future<ResponseCreateTicketModel> createTicket(
    RequestLocalTicketModel requestTicket,
  ) async {
    final company = await StorageService.get(Keys.kCompany);
    final response = await _dioClient.post(
      path: "/api/ticket/create/no-auth/$company/",
      bodyRaw: requestTicket.toMapServer(),
    );
    return ResponseCreateTicketModel.fromJson(response);
  }
}*/
