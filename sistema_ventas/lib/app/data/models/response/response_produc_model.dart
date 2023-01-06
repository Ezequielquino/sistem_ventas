class ResponseProducModel {
  ResponseProducModel({
    this.products,
  });

  List<Product>? products;

  factory ResponseProducModel.fromJson(Map<String, dynamic> json) =>
      ResponseProducModel(
        products: List<Product>.from(
          json["products"].map(
            (x) => Product.fromJson(x),
          ),
        ),
      );
}

class Product {
  Product({
    this.id,
    this.name,
    this.price,
    this.descuento,
  });

  int? id;
  String? name;
  double? price;
  double? descuento;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        descuento: json["descuento"],
      );
}
