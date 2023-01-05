import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/sistema_ventas_controller.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/widgets/body.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/widgets/header.dart';

class SistemaVentasView extends StatelessWidget {
  const SistemaVentasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SistemaVentasController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            actions: const [HeaderAppbar()],
          ),
          body: BodySistemVenta()),
    );
  }
}
