import 'package:project/model/cart_model.dart';
import 'package:project/model/product_model.dart';
class ProductState {
  //object show all product
  final List<ProductModel> allProduct;
  //object show datail product
  final ProductModel? detailproduct;
  //cart
  final List<CartModel> cartitem;
  //this constuter
  ProductState({required this.allProduct, required this.detailproduct,required this.cartitem});
  factory ProductState.init() {
    return ProductState(allProduct: [], detailproduct: null,cartitem: []);
  }
  List<String> get category {
    return allProduct.map((item) => item.category).toSet().toList();
  }
  // both params optional now, and names match what's used in the body
    ProductState copy({
    List<ProductModel>? allProduct,
    ProductModel? detailProduct,
  }) {
    return ProductState(
      allProduct: allProduct ?? this.allProduct,
      detailproduct: detailProduct ?? this.detailproduct,
      cartitem: cartitem ?? this.cartitem,
    );
  }
}
