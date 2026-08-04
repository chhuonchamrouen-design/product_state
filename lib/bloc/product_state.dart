
import 'package:project/model/cart_model.dart';
import 'package:project/model/product_model.dart';
class ProductState {
  //object show all product
  final List<ProductModel> allProduct;
  //object show datail product
  final ProductModel? detailproduct;
  //cart
  final List<CartModel> cartitem;
  final int quantity;
  //this constuter
  ProductState({
    required this.allProduct,
    required this.detailproduct,
    required this.cartitem,
    this.quantity = 1,
  });
  //create object by productstate
  factory ProductState.init() {
    return ProductState(
      allProduct: [],
      detailproduct: null,
      cartitem: [],
      quantity: 1,
    );
  }
  List<String> get category {
    return allProduct.map((item) => item.category).toSet().toList();
  }
  //new object by productstate get some product you want
  ProductState copy({
    List<ProductModel>? allProduct,
    ProductModel? detailProduct,
    List<CartModel>? cartItem,
    int? quantity,
  }) {
    return ProductState(
      allProduct: allProduct ?? this.allProduct,
      detailproduct: detailProduct ?? this.detailproduct,
      cartitem: cartItem ?? this.cartitem,
      quantity: quantity ?? this.quantity,
    );
  }
}