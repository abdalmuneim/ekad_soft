import 'dart:io';
import 'dart:ui';

class ProductModel {
  int? id;
  String? productName;
  String? price;
  Color? color;
  File? image;

  ProductModel({
    this.id,
    this.productName,
    this.price,
    this.color,
    this.image,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['productName'];
    price = json['price'];
    color = json['color'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['productName'] = productName;
    data['price'] = price;
    data['color'] = color;
    data['image'] = image;
    return data;
  }
}
