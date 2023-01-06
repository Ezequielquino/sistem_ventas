import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/ui/views/login_ventas/login_ventas_controller.dart';

class LoginVentasView extends StatelessWidget {
  const LoginVentasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginVentasController>(
      builder: (controller) => Scaffold(
        body: Stack(
          children: [
            Container(
              height: 580.0,
              width: double.infinity,
              color: Colors.amber,
              child: Image.asset(
                "assets/cajero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200.0, left: 490.0),
              child: Container(
                color: Colors.red,
                height: 450.0,
                width: 400.0,
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.green,
                      child: Image.asset("assets/logo.png"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
