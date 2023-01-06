import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/sistema_ventas_controller.dart';
import 'package:sistema_ventas/app/ui/views/sitem_ventas/widgets/purchase_detail.dart';

class BodySistemVenta extends GetView<SistemaVentasController> {
  const BodySistemVenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: controller.searchProduct,
                      child: const Text("Agregar"),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      cursorColor: Colors.black,
                      controller: controller.txtCtrlProduct,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.bold),
                        hintText: "Search Products",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    //Now let's add the Table
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Obx(
                          () => DataTable(
                            columnSpacing: 250.0,
                            headingRowColor: MaterialStateProperty.resolveWith(
                              (states) => Color.fromARGB(255, 159, 148, 161),
                            ),
                            columns: const [
                              DataColumn(label: Text("Cant.")),
                              DataColumn(label: Text("Producto")),
                              DataColumn(label: Text("Precio")),
                              DataColumn(label: Text("Dscto.")),
                            ],
                            rows: List.generate(
                              controller.carItems.length,
                              (index) => DataRow(
                                cells: [
                                  const DataCell(
                                    Text("1"),
                                    //Text("${controller.carItems[index].id}"),
                                  ),
                                  DataCell(
                                    Text(
                                      "${controller.carItems[index].name}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      "${controller.carItems[index].price}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      "${controller.carItems[index].descuento}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          PurchaseDetail()
        ],
      ),
    );
  }
}
