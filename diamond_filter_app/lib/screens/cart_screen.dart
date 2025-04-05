import 'package:diamond_filter_app/blocs/cart_bloc.dart';
import 'package:diamond_filter_app/blocs/cart_event.dart';
import 'package:diamond_filter_app/blocs/cart_item.dart';
import 'package:diamond_filter_app/blocs/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1BA9B5), Color(0xFF67D1E1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, cartState) {
          final cart = cartState.cartItems; // ✅ FIXED: it's a list now
          if (cart.isEmpty) {
            return const Center(child: Text("Your cart is empty"));
          }
          final totalCarat = cart.fold(0.0, (sum, item) => sum + item.diamond.carat * item.quantity);
          final totalPrice = cart.fold(0.0, (sum, item) => sum + item.diamond.finalAmount * item.quantity);
          final totalQuantity = cart.fold(0, (sum, item) => sum + item.quantity);
          final avgPrice = totalQuantity > 0 ? totalPrice / totalQuantity : 0.0;
          final avgDiscount = totalQuantity > 0
              ? cart.fold(0.0, (sum, item) => sum + item.diamond.discount * item.quantity) / totalQuantity
              : 0.0;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              ...cart.map((item) => _buildCartItem(context, item)),
              // const SizedBox(height: 24),
              // _buildSummary(totalCarat, totalPrice, avgPrice, avgDiscount),
              // const SizedBox(height: 80),
            ],
          );
        },
      ),
        bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
          builder: (context, cartState) {
            final totalCarat = cartState.cartItems.fold<double>(
              0.0,
                  (sum, item) => sum + item.diamond.carat * item.quantity,
            );

            final subtotal = cartState.cartItems.fold<double>(
              0.0,
                  (sum, item) => sum + item.diamond.finalAmount * item.quantity,
            );
            final totalDiscount = cartState.cartItems.fold<double>(
              0.0,
                  (sum, item) {
                final basePricePerUnit = item.diamond.perCaratRate * item.diamond.carat;
                final discountAmountPerUnit = basePricePerUnit * (item.diamond.discount.abs() / 100);
                final totalDiscountForItem = discountAmountPerUnit * item.quantity;
                return sum + totalDiscountForItem;
              },
            );
            const taxRate = 0.08; // 8% tax
            final totalTax = subtotal * taxRate;
            final totalAmount = subtotal + totalTax;

            return Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFFF), Color(0xFF67D1E1),Color(0xFFFFF),],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _summaryRow("Total Carat", "${totalCarat.toStringAsFixed(2)} ct"),
                  _summaryRow("Total Discount", "-\$${totalDiscount.toStringAsFixed(2)}"),
                  _summaryRow("Total Tax", "\$${totalTax.toStringAsFixed(2)}"),
                  _summaryRow("Total Amount", "\$${totalAmount.toStringAsFixed(2)}",),

                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Order placement logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text("Place Order", style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            );
          },
        ),

    );
  }

  Widget _buildCartItem(BuildContext context, CartItem item) {
    final Map<String, String> shapeToImageMap = {
      "BR": "circle.png",
      "PR": "pearl.png",
      "OV": "oval.png",
      "PS": "princess.png",
      "RAD": "radiant.png",
      "EM": "emerald.png",
      "MQ": "marquise.png",
      "HS": "heart.png",
      "CU": "asscher.png",
    };
    final imageName = shapeToImageMap[item.diamond.shape] ?? 'default.png';
    const double deliveryFee = 10.0;
    final double basePricePerUnit = item.diamond.perCaratRate * item.diamond.carat;
    final double discountAmountPerUnit = basePricePerUnit * (item.diamond.discount.abs() / 100);
    final double finalPricePerUnit = basePricePerUnit - discountAmountPerUnit;

    final double productPrice = finalPricePerUnit * item.quantity;
    final double totalPrice = productPrice + deliveryFee;

    return StatefulBuilder(
      builder: (context, setState) {
        bool showDetails = true;
        return Container(
          color: Colors.white,

         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.only(bottom: 16),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bg removed/$imageName',
                      height: 50,
                      width: 50,
                      errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        item.diamond.shape,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),

                    GestureDetector(
                      onTap: () => context.read<CartBloc>().add(RemoveFromCart(item.diamond)),
                      child: const Text(
                        "REMOVE",
                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("Quantity"),
                    const SizedBox(width: 12),
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: item.quantity > 1
                          ? () => context.read<CartBloc>().add(UpdateQuantity(item.diamond, item.quantity - 1))
                          : null,
                    ),
                    Text(item.quantity.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: () => context.read<CartBloc>().add(UpdateQuantity(item.diamond, item.quantity + 1)),
                    ),
                  ],
                ),
                if (showDetails) ...[
                  const Divider(),
                  _priceRow("Original Price:", "\$${(basePricePerUnit * item.quantity).toStringAsFixed(2)}"),
                  _priceRow("Discount (${item.diamond.discount.toStringAsFixed(0)}%)", "-\$${(discountAmountPerUnit * item.quantity).toStringAsFixed(2)}"),
                  _priceRow("Price After Discount:", "\$${productPrice.toStringAsFixed(2)}"),
                  _priceRow("Total", "\$${totalPrice.toStringAsFixed(2)}", bold: true),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _priceRow(String label, String value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 14, fontWeight: bold ? FontWeight.bold : FontWeight.w400)),
          Text(value, style: TextStyle(fontSize: 14, fontWeight: bold ? FontWeight.bold : FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildSummary(double carat, double total, double avgPrice, double avgDiscount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _summaryRow("Total Carat", "${carat.toStringAsFixed(2)} ct"),
        _summaryRow("Total Price", "\$${total.toStringAsFixed(2)}"),
        _summaryRow("Avg. Price", "\$${avgPrice.toStringAsFixed(2)}"),
        _summaryRow("Avg. Discount", "${avgDiscount.toStringAsFixed(2)}%"),
      ],
    );
  }

  Widget _summaryRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          Text(value, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
