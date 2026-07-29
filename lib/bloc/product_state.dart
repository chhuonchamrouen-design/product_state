import 'package:project/model/product_model.dart';
//import 'package:project_state11_12/model/product_model.dart';

class ProductState {
  //object show all product
  final List<ProductModel> allProduct;

  ProductState({required this.allProduct});
  //create new object by productstate
  factory ProductState.init() {
    return ProductState(allProduct: []);
  }
  //List get name category
  List<String> get category {
    return allProduct.map((item) => item.category).toSet().toList();
  }

  //new object by productstate get some product you want
  ProductState copy({List<ProductModel>? allproduct}) {
    return ProductState(allProduct: allproduct ?? this.allProduct);
  }
}