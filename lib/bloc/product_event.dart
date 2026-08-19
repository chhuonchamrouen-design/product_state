import 'package:project/model/cart_model.dart';
import 'package:project/model/product_model.dart';

abstract class ProductEvent {}

//show product
class LoadProduct extends ProductEvent {}

//Detail Screen
class DetailProduct extends ProductEvent {
  final ProductModel detailproduct;
  DetailProduct({required this.detailproduct});
}

//cart
class AddCartEvent extends ProductEvent {
  final List<CartModel>? itemCart;
  final ProductModel product;
  final String? size;
  final String? color;
  final int quantity;
  AddCartEvent({
    this.itemCart,
    required this.color,
    required this.product,
    required this.size,
    this.quantity = 1,
  });
}

//Increment
class Increment extends ProductEvent {}

//Descrement
class Descrement extends ProductEvent {}

//update quantity Cart
class UpdateQuantityCart extends ProductEvent {
  final CartModel cartModel;
  final int quantity;
  UpdateQuantityCart({required this.cartModel, required this.quantity});
}

//remove cart
class RemoveCartEvent extends ProductEvent {
  final CartModel cartModel;
  RemoveCartEvent({required this.cartModel});
}

class ResetQuantityEvent extends ProductEvent {}

//filter by category (renamed from FiltterCatagoryEvent -> fixed spelling)
class FilterCategoryEvent extends ProductEvent {
  final String category;
  FilterCategoryEvent({required this.category});
}