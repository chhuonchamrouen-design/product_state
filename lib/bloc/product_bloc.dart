
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/bloc/product_state.dart';
import 'package:project/controller/controller_model.dart';
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductController product = ProductController();
  ProductBloc() : super(ProductState.init()) {
    on<LoadProduct>((event, emit) {
      onProduct(event,emit);
    });
  }
  void onProduct(LoadProduct event,Emitter emit){
    emit(state.copy(allproduct: product.products));
  }
}

