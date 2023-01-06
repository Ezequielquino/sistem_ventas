import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/routes/routes_name.dart';

class LoginVentasController extends GetxController {
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
  //final _authenticationRepository = Get.find<AuthenticationRepository>();

  //Variable
  RxBool isLoading = RxBool(false);
  RxBool isObscureText = RxBool(true);
  RxString errorTextCompany = RxString("");
  RxString errorTextEmail = RxString("");
  RxString errorTextPassword = RxString("");
  RxString existsSession = RxString("");

  //TextEditingController
  TextEditingController textCtrlCompania = TextEditingController();
  TextEditingController textCtrlEmail = TextEditingController();
  TextEditingController textCtrlPassword = TextEditingController();

  //Function
  void _initialize() async {
    textCtrlCompania.text = "cid";
    textCtrlEmail.text = "app_movil";
    textCtrlPassword.text = "W8JcXHmObSwOCmeH";
  }

  void showPassword() {
    isObscureText.value = !isObscureText.value;
  }

  void doAuthentication() async {
    isLoading.value = false;
    Get.offNamed(RoutesName.SISTEMAVENTAS);
  }
}
