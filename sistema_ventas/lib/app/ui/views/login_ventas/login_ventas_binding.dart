import 'package:get/get.dart';
import 'package:sistema_ventas/app/ui/views/login_ventas/login_ventas_controller.dart';

class LoginVentasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginVentasController());
  }
}
