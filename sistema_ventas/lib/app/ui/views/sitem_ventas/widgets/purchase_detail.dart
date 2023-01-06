import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/sistema_ventas_controller.dart';

class PurchaseDetail extends StatelessWidget {
  const PurchaseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SistemaVentasController>(
      builder: (controller) => Expanded(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 25.0),
                      Container(
                        height: 160.0,
                        width: 140.0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 213, 219, 224),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Center(
                          child: Image.asset("assets/comprobante.png"),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      const Text(
                        "Comprobante",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 25.0),
                      Container(
                        height: 160.0,
                        width: 140.0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 213, 219, 224),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Center(
                          child: Image.asset("assets/cliente.png"),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      const Text(
                        "Cliente",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 205.0),
              Padding(
                padding: EdgeInsets.only(), //(bottom: 240.0),
                child: Row(
                  children: [
                    const Text(
                      "Total de productos",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black45),
                    ),
                    SizedBox(width: 110.0),
                    Container(
                      height: 30.0,
                      width: 110.0,
                      color: Colors.transparent,
                      child: Center(
                        child: Obx(
                          () => Text(
                            "         ${controller.carItems.length}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Sub Total",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black45),
                  ),
                  SizedBox(width: 170.0),
                  Container(
                    height: 30.0,
                    width: 110.0,
                    color: Colors.transparent,
                    child: Center(
                      child: Obx(
                        () => Text(
                          "USD  ${controller.total}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Total Descuento",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black45),
                  ),
                  SizedBox(width: 127.0),
                  Container(
                    height: 30.0,
                    width: 110.0,
                    color: Colors.transparent,
                    child: Center(
                      child: Obx(
                        () => Text(
                          "USD  ${controller.desctotal}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.only(),
                child: Container(
                  //margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 80.0,
                  width: double.infinity,
                  color: Colors.red,
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 10.0),
                          SizedBox(width: 320.0),
                          const Text(
                            "Total a pagar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10.0),
                          Obx(
                            () => Text(
                              "USD ${controller.total}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
