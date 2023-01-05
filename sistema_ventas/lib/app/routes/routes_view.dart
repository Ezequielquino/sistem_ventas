import 'package:get/get.dart';
import 'package:sistema_ventas/app/routes/routes_name.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/sistema_ventas_binding.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/sistema_ventas_view.dart';

abstract class RoutesView {
  static final views = [
    GetPage(
      name: RoutesName.SISTEMAVENTAS,
      page: () => const SistemaVentasView(),
      binding: SistemaVentasBinding(),
    ),
  ];
}
