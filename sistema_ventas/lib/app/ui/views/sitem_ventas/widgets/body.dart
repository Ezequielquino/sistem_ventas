import 'package:flutter/material.dart';

class BodySistemVenta extends StatelessWidget {
  const BodySistemVenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 10.0, bottom: 380.0, left: 5.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 600.0,
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "Type Article Title",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    //Now let's add the Table
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DataTable(
                            headingRowColor: MaterialStateProperty.resolveWith(
                                (states) => Color.fromARGB(255, 159, 148, 161)),
                            columns: const [
                              DataColumn(label: Text("Cant.")),
                              DataColumn(label: Text("Producto")),
                              DataColumn(label: Text("Precio")),
                              DataColumn(label: Text("Dscto.")),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text("0")),
                                DataCell(
                                    Text("How to build a Flutter Web App")),
                                //DataCell(Text("${DateTime.now()}")),
                                DataCell(Text("2.3K Views")),
                                DataCell(Text("102Comments")),
                              ]),
                            ]),
                        //Now let's set the pagination,
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Container(
            color: Color.fromARGB(255, 238, 227, 227),
            height: 555.0,
            width: 300.0,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10.0),
                      Container(
                        height: 150.0,
                        width: 120.0,
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
                      SizedBox(height: 10.0),
                      Container(
                        height: 150.0,
                        width: 120.0,
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
              Padding(
                padding: EdgeInsets.only(top: 289.0),
                child: Container(
                  height: 80.0,
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      SizedBox(height: 10.0),
                      Text(
                        "Total a pagar",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
