import 'dart:convert';
import 'package:diamond_filter_app/blocs/cart_item.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/diamond_model.dart';
import '../blocs/cart_bloc.dart';

class CartStorage {
  static const String _cartKey = 'cartItems';

  static Future<void> saveCart(List<CartItem> items) async {
    final prefs = await SharedPreferences.getInstance();
    final cartJson = items.map((item) => jsonEncode({
      'diamond': item.diamond.toJson(),
      'quantity': item.quantity,
    })).toList();
    await prefs.setStringList(_cartKey, cartJson);
  }

  static Future<List<CartItem>> loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = prefs.getStringList(_cartKey);
    if (jsonList == null) return [];

    return jsonList.map((str) {
      final map = jsonDecode(str);
      return CartItem(
        diamond: Diamond.fromJson(map['diamond']),
        quantity: map['quantity'],
      );
    }).toList();
  }

  static Future<void> clearCart() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_cartKey);
  }
}
