import 'package:diamond_filter_app/models/diamond_model.dart';



class CartItem {
  final Diamond diamond;
  final int quantity;

  CartItem({required this.diamond, this.quantity = 1});
}
