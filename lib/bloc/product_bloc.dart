import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/bloc/product_state.dart';
import 'package:project/controller/controller_model.dart';
import 'package:project/model/cart_model.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductController product = ProductController();
  ProductBloc() : super(ProductState.init()) {
    //show product
    on<LoadProduct>((event, emit) {
      onProduct(event, emit);
    });
    //detailProduct
    on<DetailProduct>((event, emit) {
      onDetailProduct(event, emit);
    });
    //CartItem
    on<AddCartEvent>((event, emit) {
      onAddToCart(event, emit);
    });
    //Increment
    on<Increment>((event, emit) {
      onIncrement(event, emit);
    });
    //descrement
    on<Descrement>((event, emit) {
      onDescrement(event, emit);
    });
    //update quantity cart
    on<UpdateQuantityCart>((event, emit) {
      onUpdateCart(event, emit);
    });
    //Remove Cart
    on<RemoveCartEvent>((event, emit) {
      onRemove(event, emit);
    });
    //ResetQuantity
    on<ResetQuantityEvent>((event, emit) {
      onReset(event, emit);
    });
    //Filter by category
    on<FilterCategoryEvent>((event, emit) {
      onFilter(event, emit);
    });
  }

  void onProduct(LoadProduct event, Emitter emit) {
    emit(
      state.copy(
        allProduct: product.products,
        filtercategory: product.products,
      ),
    );
  }

  void onDetailProduct(DetailProduct event, Emitter emit) {
    emit(state.copy(detailproduct: event.detailproduct));
  }

  void onAddToCart(AddCartEvent event, Emitter emit) {
    final index = state.cartItem.indexWhere(
      (item) =>
          item.product!.code == event.product.code &&
          item.size == event.size &&
          item.color == event.color,
    );
    final List<CartModel> updateCart = List.from(state.cartItem);
    if (index != -1) {
      final cartItem = updateCart[index];
      updateCart[index] = cartItem.copyItem(
        quantity: cartItem.quantity + event.quantity,
      );
    } else {
      updateCart.add(
        CartModel(
          product: event.product,
          color: event.color,
          size: event.size,
          quantity: event.quantity,
        ),
      );
    }
    emit(state.copy(cartItem: updateCart));
  }

  //Increment
  void onIncrement(Increment event, Emitter emit) {
    emit(state.copy(quantity: state.quantity + 1));
  }

  //Descrement
  void onDescrement(Descrement event, Emitter emit) {
    if (state.quantity > 1) {
      emit(state.copy(quantity: state.quantity - 1));
    }
  }

  //update cart
  void onUpdateCart(UpdateQuantityCart event, Emitter emit) {
    final updatecart = state.cartItem.map((item) {
      if (item.product!.code == event.cartModel.product!.code) {
        return item.copyItem(quantity: event.quantity);
      }
      return item;
    }).toList();
    emit(state.copy(cartItem: updatecart));
  }

  //remove cart
  void onRemove(RemoveCartEvent event, Emitter emit) {
    final remove = state.cartItem
        .where((item) => item.product!.code != event.cartModel.product!.code)
        .toList();
    emit(state.copy(cartItem: remove));
  }

  //ResetQuantity
  void onReset(ResetQuantityEvent event, Emitter emit) {
    emit(state.copy(quantity: 1));
  }

  //filter
  void onFilter(FilterCategoryEvent event, Emitter emit) {
    if (event.category == "All") {
      emit(
        state.copy(
          filtercategory: state.allProduct,
          categories: event.category,
        ),
      );
      return;
    }
    final category = state.allProduct
        .where((item) => item.category == event.category)
        .toList();
    emit(state.copy(filtercategory: category, categories: event.category));
  }
}