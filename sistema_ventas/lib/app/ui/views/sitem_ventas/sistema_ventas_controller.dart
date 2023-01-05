import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/data/models/response/responde_sistem_ventas.dart';
import 'package:sistema_ventas/app/data/models/response/response_menu_model.dart';

class SistemaVentasController extends GetxController {
  set responseMenu(ResponseSistemVenta responseMenu) {}

  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instance
  //final _shrimpsFarmRepository = Get.find<ShrimpsFarmRepository>();

  //Variable
  //RxList<ShrimpsFarm> shrimpsFarm = RxList([]);

  //TextEditingController

  //Function
  void _initialize() async {
    try {
      final response = await rootBundle.loadString("assets/json/products.json");
      responseMenu = ResponseSistemVenta.fromJson(json.decode(response));
    } catch (error) {
      print("ocurrio un error:$error");
    }
  }

  searchProduct(String id) {
    var responseMenu;
    responseMenu.routes!.where((item) => item.displayMenuName == id);
  }
}
