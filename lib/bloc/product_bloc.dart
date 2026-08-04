import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/bloc/product_state.dart';
import 'package:project/controller/controller_model.dart';
import 'package:project/model/cart_model.dart';
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductController product = ProductController();
  ProductBloc() : super(ProductState.init()) {
    on<LoadProduct>((event, emit) {
      onProduct(event, emit);
    });
    on<DetailProduct>((event, emit) {
      onDetailProduct(event, emit);
    });
    on<Addcart>((event, emit) {
      onAddToCart(event, emit);
    });
    on<Increment>((event, emit) {
      onIncrement(event, emit);
    });
    on<Decrement>((event, emit) {
      onDescrement(event, emit);
    });
  }
  void onProduct(LoadProduct event, Emitter<ProductState> emit) {
    emit(state.copy(allProduct: product.products));
  }
  void onDetailProduct(DetailProduct event, Emitter<ProductState> emit) {
    emit(state.copy(detailProduct: event.detailproduct));
  }
  //check condition addtocart 
  void onAddToCart(Addcart event, Emitter<ProductState> emit) {
    final index = state.cartitem.indexWhere(
      (item) =>
          item.product!.code == event.product.code &&
          item.size == event.size &&
          item.color == event.color,
    );
    final List<CartModel> updateCart = List.from(state.cartitem);
    if (index != -1) {
      final cartItem = updateCart[index];
      updateCart[index] = cartItem.copyItem(
        quantity: cartItem.quantity + event.quantity,
      );
    } else {
      updateCart.add(
        CartModel(
          product:event.product,
          color:event.color,
          size: event.size,
          quantity:event.quantity,
        ),
      );
    }
    emit(state.copy(cartItem: updateCart));
  }
  //Increment
  void onIncrement(Increment event, Emitter<ProductState> emit) {
    emit(state.copy(quantity: state.quantity + 1));
  }
  //Descrement
  void onDescrement(Decrement event, Emitter<ProductState> emit) {
    if (state.quantity > 1) {//use state for update UI
    emit(state.copy(quantity: state.quantity - 1));
    }
  }
}