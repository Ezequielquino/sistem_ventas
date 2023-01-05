import 'package:get/get.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/sistema_ventas_controller.dart';

class SistemaVentasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SistemaVentasController());
  }
}
