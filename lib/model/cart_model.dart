import 'package:project/model/product_model.dart';
class CartModel {
  ProductModel? product;//get productModel like name image  that don't change
  int quantity;//value must change 
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
      product: product,
      color: color,
      size: size,
      quantity: quantity = 1,
    );
  }
}