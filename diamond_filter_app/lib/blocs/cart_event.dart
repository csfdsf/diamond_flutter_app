import 'package:diamond_filter_app/models/diamond_model.dart';

abstract class CartEvent {}

class ToggleCartItemEvent extends CartEvent {
  final Diamond diamond;
  ToggleCartItemEvent(this.diamond);
}
class UpdateQuantity extends CartEvent {
  final Diamond diamond;
  final int quantity;
  UpdateQuantity(this.diamond, this.quantity);
}

class RemoveFromCart extends CartEvent {
  final Diamond diamond;
  RemoveFromCart(this.diamond);
}
