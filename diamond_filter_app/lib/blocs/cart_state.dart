import 'cart_item.dart';

class CartState {
  final List<CartItem> cartItems;

  CartState({this.cartItems = const []});

  CartState copyWith({List<CartItem>? cartItems}) {
    return CartState(cartItems: cartItems ?? this.cartItems);
  }
}
