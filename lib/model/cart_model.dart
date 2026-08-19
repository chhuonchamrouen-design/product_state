import 'package:project/model/product_model.dart';
class CartModel {
  ProductModel? product;
  int quantity;
  String? size;
  String? color;
  CartModel({this.quantity = 1, this.color, this.size, required this.product});
  CartModel copyItem({
    ProductModel? product,
    String? color,
    String? size,
    int? quantity,
  }) {
    return CartModel(
      product: product ?? this.product,
      color: color ?? this.color,
      size: size ?? this.size,
      quantity: quantity ?? this.quantity,
    );
  }
}
