import 'package:project/model/product_model.dart';
class CartModel {
  int code;
  String name;
  double price;
  String image;
  int quantity;
  String? size;
  String? color;
  CartModel({
    required this.code,
    required this.name,
    required this.price,
    required this.image,
    this.quantity = 1,
    required this.color,
    required this.size,
  });
  CartModel copyItem({
    ProductModel? product,
    String? color,
    String? size,
    int? quantity,
  }) {
    return CartModel(
      code: code,
      name: name,
      price: price,
      image: image,
      color: color,
      size: size,
      quantity: quantity=1
    );
  }
}