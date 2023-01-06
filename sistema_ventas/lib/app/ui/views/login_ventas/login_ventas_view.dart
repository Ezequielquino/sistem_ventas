import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/ui/views/login_ventas/login_ventas_controller.dart';
import 'package:sistema_ventas/app/ui/views/login_ventas/widget/login.dart';

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
                height: 450.0,
                width: 400.0,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(6, 6),
                          blurRadius: 6)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.transparent,
                      child: Image.asset("assets/logo.png"),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Favesa especialista en ventas de mercaderias a buenos precios.\nAtendemos a los mayoristas y minoristas.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 12.0),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                    Login()
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
