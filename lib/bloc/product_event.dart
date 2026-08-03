import 'package:project/model/product_model.dart';
abstract class ProductEvent {}
//show product
class LoadProduct extends ProductEvent {}
//show detail product
class DetailProduct extends ProductEvent {
final ProductModel detailproduct;
DetailProduct({required this.detailproduct});
}
