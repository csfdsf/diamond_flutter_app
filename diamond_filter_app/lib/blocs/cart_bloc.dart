import 'package:bloc/bloc.dart';
import 'package:diamond_filter_app/blocs/cart_item.dart';
import 'package:diamond_filter_app/models/diamond_model.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState()) {
    on<ToggleCartItemEvent>(_onToggleCartItem);
    on<UpdateQuantity>((event, emit) {
      final updatedItems = state.cartItems.map((item) {
        if (item.diamond.lotId == event.diamond.lotId) {
          return CartItem(diamond: item.diamond, quantity: event.quantity);
        }
        return item;
      }).toList();
      emit(state.copyWith(cartItems: updatedItems));
    });

    on<RemoveFromCart>((event, emit) {
      final updatedItems = List<CartItem>.from(state.cartItems)
        ..removeWhere((item) => item.diamond.lotId == event.diamond.lotId);
      emit(state.copyWith(cartItems: updatedItems));
    });

  }

  void _onToggleCartItem(ToggleCartItemEvent event, Emitter<CartState> emit) {
    final List<CartItem> updatedItems = List.from(state.cartItems);
    final index = updatedItems.indexWhere(
            (item) => item.diamond.lotId == event.diamond.lotId);

    if (index != -1) {
      // Remove item if already exists
      updatedItems.removeAt(index);
    } else {
      // Add item if not in cart
      updatedItems.add(CartItem(diamond: event.diamond));
    }

    emit(state.copyWith(cartItems: updatedItems));
  }

}
