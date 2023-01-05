/*import 'package:app_gestion_camaroneras/app/data/models/request/request_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/request/request_swimming_pool_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_shrimps_farm_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_status_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_swimming_pool_model.dart';
import 'package:app_gestion_camaroneras/app/data/models/response/response_symptom_model.dart';
import 'package:app_gestion_camaroneras/app/services/storage_service.dart';
import 'package:app_gestion_camaroneras/core/network/dio_client.dart';
import 'package:app_gestion_camaroneras/core/utils/keys.dart';
import 'package:get/get.dart';

class ShrimpsFarmProvider {
  final _dioClient = Get.find<DioClient>();

  Future<ResponseShrimpsFarmModel> getShrimpsFarm(
    RequestShrimpsFarmModel requestShrimpsFarm,
  ) async {
    final response = await _dioClient.get(
      path: "/api/shrimps.farm/search",
      queryParameters: {
        "domain": "[('client_id', '=', 92)]",
        "api_key": await StorageService.get(Keys.kApiKey),
        "fields": "[ 'id','name','pond_ids']"
      },
    );
    return ResponseShrimpsFarmModel.fromJson(response);
  }

  Future<ResponseSwimmingPoolModel> getSwimmingPools(
    RequestSwimmingPoolModel requestSwimmingPool,
  ) async {
    final response = await _dioClient.get(
      path: "/api/shrimps.pond/search",
      queryParameters: {
        "domain": "[('farm_id','=',${requestSwimmingPool.shrimpsFarmId})]",
        "api_key": await StorageService.get(Keys.kApiKey),
        //"fields": "[ 'id','name','pond_ids']"
      },
    );

    return ResponseSwimmingPoolModel.fromJson(response);
  }

  Future<ResponseSymptomModel> getSymptom() async {
    final response = await _dioClient.get(
      path: "/api/helpdesk.symptom/search",
      queryParameters: {
        "api_key": await StorageService.get(Keys.kApiKey),
        "fields": "[ 'id','name','code']"
      },
    );
    return ResponseSymptomModel.fromJson(response);
  }

  Future<ResponseStatusModel> getStatus() async {
    final response = await _dioClient.get(
      path: "/api/helpdesk.stage/search",
      queryParameters: {
        "api_key": await StorageService.get(Keys.kApiKey),
        "fields": "[ 'id','name','sequence']"
      },
    );
    return ResponseStatusModel.fromJson(response);
  }
}*/
