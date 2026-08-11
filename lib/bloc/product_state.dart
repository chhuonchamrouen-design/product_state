import 'package:project/model/cart_model.dart';
import 'package:project/model/product_model.dart';

class ProductState {
  //object show all product
  final List<ProductModel> allProduct;
  //detail Prouct
  final ProductModel? detailproduct;
  //cart
  final List<CartModel> cartItem;
  int quantity;
  ProductState({
    required this.allProduct,
    required this.detailproduct,
    required this.cartItem,
    this.quantity = 1,
  });
  //create new object by productstate
  factory ProductState.init() {
    return ProductState(
      allProduct: [],
      detailproduct: null,
      cartItem: [],
      quantity: 1,
    );
  }
  //List get name category
  List<String> get category {
    return allProduct.map((item) => item.category).toSet().toList();
  }

  //new object by productstate get some product you want
  ProductState copy({
    List<ProductModel>? allproduct,
    ProductModel? detailProduct,
    List<CartModel>? cartItem,
    int? quantity,
  }) {
    return ProductState(
      allProduct: allproduct ?? this.allProduct,
      detailproduct: detailProduct ?? this.detailproduct,
      cartItem: cartItem ?? this.cartItem,
      quantity: quantity ?? this.quantity,
    );
  }

  double get gettotal => cartItem.fold(
    0.0,
    (sum, itme) => sum += itme.quantity * itme.product!.price,
  );
  double devilery = 2;
  double dis() {
    double dis = (gettotal > 60 && gettotal <= 70)
        ? 10
        : (gettotal > 70 && gettotal <= 80)
        ? 15
        : (gettotal > 80 && gettotal <= 90)
        ? 20
        : 25;
    return dis = gettotal * dis / 100;
  }

  double subtoal() {
    return gettotal - dis() + devilery;
  }
}
