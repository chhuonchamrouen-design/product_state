import 'package:project/model/cart_model.dart';
import 'package:project/model/product_model.dart';

class ProductState {
  //object show all product
  final List<ProductModel> allProduct;
  //detail Product
  final ProductModel? detailproduct;
  //cart
  final List<CartModel> cartItem;
  final int quantity;
  final double total;
  //filter all category
  final List<ProductModel>? filtercategory;
  final String? categories;

  ProductState({
    required this.allProduct,
    required this.detailproduct,
    required this.cartItem,
    this.quantity = 1,
    this.total = 0.0,
    this.categories,
    this.filtercategory,
  });

  //create new object by productstate
  factory ProductState.init() {
    return ProductState(
      allProduct: [],
      detailproduct: null,
      cartItem: [],
      quantity: 1,
      categories: "All",
      filtercategory: [],
    );
  }

  //List of category names, always including "All" first
  List<String> get category {
    final cats = allProduct.map((item) => item.category).toSet().toList();
    return ["All", ...cats];
  }

  //new object by productstate get some product you want
  ProductState copy({
    List<ProductModel>? allProduct,
    ProductModel? detailproduct,
    List<CartModel>? cartItem,
    int? quantity,
    double? total,
    List<ProductModel>? filtercategory,
    String? categories,
  }) {
    return ProductState(
      allProduct: allProduct ?? this.allProduct,
      detailproduct: detailproduct ?? this.detailproduct,
      cartItem: cartItem ?? this.cartItem,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      categories: categories ?? this.categories,
      filtercategory: filtercategory ?? this.filtercategory,
    );
  }

  double get gettotal => cartItem.fold(
    0.0,
    (sum, item) => sum + (item.quantity * item.product!.price),
  );

  final double devilery = 2;

  // Fixed: tiers now step correctly instead of catching everything
  // outside 60-90 (including empty carts) in the 25% branch.
  double dis() {
    double percent = 0;
    if (gettotal > 90) {
      percent = 25;
    } else if (gettotal > 80) {
      percent = 20;
    } else if (gettotal > 70) {
      percent = 15;
    } else if (gettotal > 60) {
      percent = 10;
    }
    return gettotal * percent / 100;
  }

  double subtoal() {
    return gettotal - dis() + devilery;
  }
}
