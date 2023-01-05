class ResponseSistemVenta {
  ResponseSistemVenta({
    this.id = "",
    this.name = "",
    this.price = "",
    this.descuento = "",
  });

  late String id;
  late String name;
  late String price;
  late String descuento;

  factory ResponseSistemVenta.fromJson(Map<String, dynamic> json) =>
      ResponseSistemVenta(
        id: json["0001"] ?? "",
        name: json["leche"] ?? "",
        price: json["25"] ?? "",
        descuento: json["0.0"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "0001": id,
        "leche": name,
        "25": price,
        //"0.0" descuento,
      };
}

/*class Responsetventa {
  Responsetventa(
      {required this.id,
      required this.name,
      required this.price,
      required this.descuento});

  String id;
  String name;
  String price;
  String descuento;

  Map<String, dynamic> toJson() =>
      {"id": id, "name": name, "price": price, "descuento": descuento};
}*/
