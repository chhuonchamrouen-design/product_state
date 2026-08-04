import 'package:project/model/cart_model.dart';
import 'package:project/model/product_model.dart';
abstract class ProductEvent {}
//show product
class LoadProduct extends ProductEvent {}
//show detail product
class DetailProduct extends ProductEvent {
  final ProductModel detailproduct;
  DetailProduct({required this.detailproduct});
}
class Addcart extends ProductEvent {
  final List<CartModel>? itemCart;
  final ProductModel product;
  final String? size;
  final String? color;
  final int quantity;
  Addcart({
    this.itemCart,
    required this.color,
    required this.product,
    required this.size,
    this.quantity = 1,
  });
}
class Increment extends ProductEvent {}
class Decrement extends ProductEvent {}