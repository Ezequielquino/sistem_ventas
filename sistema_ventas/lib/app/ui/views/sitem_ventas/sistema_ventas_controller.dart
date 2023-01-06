import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/data/models/response/responde_sistem_ventas.dart';
import 'package:sistema_ventas/app/data/models/response/response_menu_model.dart';
import 'package:sistema_ventas/app/data/models/response/response_produc_model.dart';
//import 'package:sistema_ventas/app/data/models/response/response_product_model.dart';

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
  RxList<Product> products = RxList([]);
  RxList<Product> carItems = RxList([]);
  RxDouble total = RxDouble(0.0);
  RxDouble desctotal = RxDouble(0.0);

  TextEditingController txtCtrlProduct = TextEditingController();

  //TextEditingController

  //Function
  void _initialize() async {
    try {
      final data = await rootBundle.loadString("assets/json/products.json");
      final response = ResponseProducModel.fromJson(json.decode(data));
      products.value = response.products ?? [];
    } catch (error) {
      print("ocurrio un error:$error");
    }
  }

  searchProduct() {
    final findProduct = products.where(
      //cantidad de producto
      (item) => item.id == int.parse(txtCtrlProduct.text),
    );

    if (findProduct.isNotEmpty) {
      //descuentos
      desctotal.value =
          desctotal.value + findProduct.first.descuento!.toDouble();
    }

    if (findProduct.isNotEmpty) {
      //PagoTotal
      total.value = total.value + findProduct.first.price!.toDouble();
      carItems.add(findProduct.first);
    } else {
      Get.snackbar(
        "No se encontro producto",
        "Ingrese otro código de producto",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
