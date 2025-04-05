import 'package:diamond_filter_app/blocs/cart_bloc.dart';
import 'package:diamond_filter_app/blocs/cart_event.dart';
import 'package:diamond_filter_app/blocs/cart_state.dart';
import 'package:diamond_filter_app/blocs/filter_bloc.dart';
import 'package:diamond_filter_app/models/diamond_model.dart';
import 'package:diamond_filter_app/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ResultPage extends StatefulWidget {
  final String? selectedShape;

  const ResultPage({Key? key, this.selectedShape}) : super(key: key);


  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String _sortBy = 'price';
  bool _ascending = true;
  final Set<String> _cart = {};
  String _selectedSort = 'price_asc'; // default

  final Map<String, String> shapeToImageMap = {
    "Round": "circle.png",
    "Pearl": "pearl.png",
    "Emerald": "emerald.png",
    "Asscher": "asscher.png",
    "Marquise": "marquise.png",
    "Radiant": "radiant.png",
    "Oval": "oval.png",
    "Heart": "heart.png",
    "Princess": "princess.png",
  };

  @override
  void initState() {
    super.initState();

  }
  void _sortDiamonds() {
    context.read<FilterBloc>().add(FilterEvent()); // re-dispatch or call sorting logic in build
  }


  // void _sortDiamonds() {
  //   setState(() {
  //     _diamonds.sort((a, b) {
  //       final aValue = _sortBy == 'price' ? a.finalAmount : a.carat;
  //       final bValue = _sortBy == 'price' ? b.finalAmount : b.carat;
  //       return _ascending ? aValue.compareTo(bValue) : bValue.compareTo(aValue);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtered Diamonds"),
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
        actions: [
          IconButton(
            icon: const Icon(Icons.swap_vert),
            tooltip: 'Sort',
            onPressed: () => _showSortBottomSheet(context),
          ),
        ],
      ),

      backgroundColor: Colors.grey[100],

      // ✅ Filtered Diamonds List
      body: BlocBuilder<FilterBloc, FilterState>(
        builder: (context, state) {
          final diamonds = List<Diamond>.from(state.filteredDiamonds);
          diamonds.sort((a, b) {
            final aValue = _sortBy == 'price' ? a.finalAmount : a.carat;
            final bValue = _sortBy == 'price' ? b.finalAmount : b.carat;
            return _ascending ? aValue.compareTo(bValue) : bValue.compareTo(aValue);
          });

          if (diamonds.isEmpty) {
            return const Center(child: Text("No diamonds found"));
          }

          return ListView.builder(
            itemCount: diamonds.length,
            itemBuilder: (context, index) {
              final diamond = diamonds[index];
              final imageName = shapeToImageMap[widget.selectedShape ?? ''] ?? '';

              return Slidable(
                key: ValueKey(diamond.lotId),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    CustomSlidableAction(
                      onPressed: (_) {
                        context.read<FilterBloc>().add(RemoveDiamondEvent(diamond.lotId));

                      },
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.delete, color: Colors.white, size: 20),
                      ),
                    ),

                  ],
                ),
                child: Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 3,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            // Left - Details
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${diamond.carat} Carat ${widget.selectedShape ?? diamond.shape} Diamond",
                                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  const SizedBox(height: 6),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text("Color    : ${diamond.color}", style: TextStyle(fontSize: 14)),
                                      ),
                                      Expanded(
                                        child: Text("Clarity : ${diamond.clarity}", style: TextStyle(fontSize: 14)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text("Cut       : ${diamond.cut}", style: TextStyle(fontSize: 14)),
                                      ),
                                      Expanded(
                                        child: Text("Polish  : ${diamond.polish}", style: TextStyle(fontSize: 14)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text("Symmetry: ${diamond.symmetry}", style: TextStyle(fontSize: 14)),
                                      ),
                                      Expanded(
                                        child: Text("Fluor.  : ${diamond.fluorescence}", style: TextStyle(fontSize: 14)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text("Lab      : ${diamond.lab}", style: TextStyle(fontSize: 14)),

                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      const Text(
                                        "Price: ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        "\$${diamond.finalAmount.toStringAsFixed(2)}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.teal.shade700,
                                        ),
                                      ),
                                      // const SizedBox(width: 8),
                                      // Container(
                                      //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.green.shade100,
                                      //     borderRadius: BorderRadius.circular(12),
                                      //   ),
                                      //   child: Text(
                                      //     "\$${diamond.finalAmount.toStringAsFixed(2)}",
                                      //     style: const TextStyle(
                                      //       color: Colors.cyan,
                                      //       fontWeight: FontWeight.bold,
                                      //       fontSize: 12,
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),

                                  const SizedBox(height: 10),
                                  IconButton(
                                    icon: Icon(
                                      _cart.contains(diamond.lotId) ? Icons.check_circle : Icons.add_circle_outline,
                                      color: _cart.contains(diamond.lotId) ? Colors.green : Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _cart.contains(diamond.lotId)
                                            ? _cart.remove(diamond.lotId)
                                            : _cart.add(diamond.lotId);
                                      });
                                      context.read<CartBloc>().add(
                                        ToggleCartItemEvent(diamond),
                                      );
                                    },
                                  )

                                ],
                              ),
                            ),

                            const SizedBox(width: 10),

                            // Right - Image
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/bg removed/$imageName',
                                    height: 70,
                                    width: 70,
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.image_not_supported),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(diamond.lotId, style: const TextStyle(fontSize: 12)),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ),
                      // Discount Badge
                      Positioned(
                        top: 0,
                        right: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "${diamond.discount.toStringAsFixed(2)}%",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },

          );
        },
      ),

      // ✅ Bottom Bar
      bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
        builder: (context, cartState) {
          final itemCount = cartState.cartItems.fold<int>(0, (sum, item) => sum + item.quantity);


          return Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                // Buy Now Button
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                    child: const Text(
                      "ADD TO CART",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 15),

                // Cart Icon with count
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.cyan,
                      radius: 28,
                      child: Icon(Icons.shopping_cart, color: Colors.white),
                    ),
                    if (itemCount > 0)
                      Positioned(
                        right: 4,
                        top: 4,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink,
                          ),
                          child: Text(
                            itemCount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }


  void _showSortBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Sort", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  _sortOptionTile("Price: High to Low", 'price_desc', setModalState),
                  _sortOptionTile("Price: Low to High", 'price_asc', setModalState),
                  _sortOptionTile("Carat: High to Low", 'carat_desc', setModalState),
                  _sortOptionTile("Carat: Low to High", 'carat_asc', setModalState),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_selectedSort.contains('price')) {
                          _sortBy = 'price';
                        } else if (_selectedSort.contains('carat')) {
                          _sortBy = 'carat';
                        }
                        _ascending = _selectedSort.contains('asc');
                        _sortDiamonds();
                        Navigator.pop(context);
                      },
                      child: const Text("Apply"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _sortOptionTile(String label, String value, void Function(void Function()) setModalState) {
    return RadioListTile<String>(
      title: Text(label),
      value: value,
      groupValue: _selectedSort,
      onChanged: (val) {
        if (val != null) {
          setModalState(() {
            _selectedSort = val;
          });
        }
      },
      activeColor: Colors.teal,
      contentPadding: EdgeInsets.zero,
    );
  }




}
