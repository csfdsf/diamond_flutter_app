import 'package:diamond_filter_app/blocs/filter_bloc.dart';
import 'package:diamond_filter_app/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/data.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final TextEditingController minController = TextEditingController();
  final TextEditingController maxController = TextEditingController();

  final List<String> _caratRanges = [];
  String selectedShape = '';
  String? selectedColor;
  String? selectedClarity;
  double? userMinCarat;
  double? userMaxCarat;

  Map<String, bool> labOptions = {
    "GIA": false,
    "In-House": false,
    "HRD": false,
  };
  Map<String, String> shapeMap = {
    "Round": "BR",
    "Pearl": "PR",
    "Oval": "OV",
    "Princess": "PS",
    "Radiant": "RAD",
    "Emerald": "EM",
    "Marquise": "MQ",
    "Heart": "HS",
    "Asscher": "CU"
  };
  final List<String> colorOptions = ['D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q'];
  final List<String> clarityOptions = ['FL', 'IF', 'VVS1', 'VVS2', 'VS1', 'VS2', 'SI1', 'SI2', 'SI3', 'I1', 'I2', 'I3'];

  void _addRange() {
    double? min = double.tryParse(minController.text);
    double? max = double.tryParse(maxController.text);

    if (min != null && max != null && min < max) {
      setState(() {
        _caratRanges.add("${min.toStringAsFixed(2)} - ${max.toStringAsFixed(2)}");
        userMinCarat = min;
        userMaxCarat = max;
        minController.clear();
        maxController.clear();
      });
    } else {
      _showError("Enter valid min and max values");
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final isSmallScreen = constraints.maxWidth < 400;

      return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Stack(
            children: [
              Container(
                height: 500,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF1BA9B5), Color(0xFF67D1E1)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Alexis C.', style: TextStyle(color: Colors.white70, fontSize: 14)),
                        SizedBox(height: 4),
                        Text('Welcome to Diamostore', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 120,
                left: 20,
                right: 20,
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('GET 5% OFF', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                            Text('at every jewelry product', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                        Image.asset('assets/images/diamond_three.png', height: 80, width: 80),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFilterHeader("Shapes"),
                const SizedBox(height: 12),
                GridView.count(
                  crossAxisCount: isSmallScreen ? 3 : 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _iconShape("Round", "assets/images/bg removed/circle.png"),
                    _iconShape("Pearl", "assets/images/bg removed/pearl.png"),
                    _iconShape("Emerald", "assets/images/bg removed/emerald.png"),
                    _iconShape("Asscher", "assets/images/bg removed/asscher.png"),
                    _iconShape("Marquise", "assets/images/bg removed/marquise.png"),
                    _iconShape("Radiant", "assets/images/bg removed/radiant.png"),
                    _iconShape("Oval", "assets/images/bg removed/oval.png"),
                    _iconShape("Heart", "assets/images/bg removed/heart.png"),
                    _iconShape("Princess", "assets/images/bg removed/princess.png"),
                  ],
                ),
                const SizedBox(height: 14),
                _buildFilterHeader("CARAT"),
                Row(
                  children: [
                    Expanded(child: _buildTextField("Min", "0.60", minController)),
                    const SizedBox(width: 8),
                    Expanded(child: _buildTextField("Max", "3.80", maxController)),
                    const SizedBox(width: 8),
                    _buildAddButton(),
                  ],
                ),
                const SizedBox(height: 14),
                if (_caratRanges.isNotEmpty)
                  TextFormField(
                    readOnly: true,
                    controller: TextEditingController(text: _caratRanges.last),
                    decoration: InputDecoration(
                      labelText: 'Selected Carat Range',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () => setState(() => _caratRanges.clear()),
                      ),
                    ),
                  ),
                const SizedBox(height: 10),
                _buildFilterHeader("LAB"),
                Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: labOptions.entries.map((entry) => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: entry.value,
                        onChanged: (val) {
                          setState(() {
                            labOptions.updateAll((key, value) => false);
                            labOptions[entry.key] = val ?? false;
                          });
                        },
                      ),
                      Text(entry.key),
                    ],
                  )).toList(),
                ),
                const SizedBox(height: 10),
                _buildFilterHeader("Color"),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: colorOptions.map((c) => _buildSingleSelectChip(c, selectedColor, (v) => selectedColor = v)).toList(),
                ),
                const SizedBox(height: 16),
                _buildFilterHeader("Clarity"),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: clarityOptions.map((c) => _buildSingleSelectChip(c, selectedClarity, (v) => selectedClarity = v)).toList(),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _applyFilters(context),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color(0xFF1BA9B5),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text("Search", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          ],
        ),
      );
    });
  }
  Widget _buildFilterHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
  Widget _buildTextField(String label, String hint,TextEditingController controller) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      child: TextField(
        controller: controller,

        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
  Widget _buildWrap(List<String> labels) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: labels.map((label) => _filterChip(label)).toList(),
    );
  }

  Widget _filterChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: const TextStyle(fontSize: 13)),
    );
  }

  Widget _iconShape(String label, String imagePath) {
    final bool isSelected = selectedShape == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedShape = label;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal.withOpacity(0.1) : Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.teal : Colors.grey.shade300,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.contain,
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.teal : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1BA9B5), Color(0xFF67D1E1)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
           shape: BoxShape.circle),
      child: IconButton(
        icon: const Icon(Icons.add, color: Colors.white, size: 20),
        onPressed: _addRange,
      ),
    );
  }

  Widget _buildChip(String label, Set<String> selectedSet) {
    final isSelected = selectedSet.contains(label);
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          isSelected ? selectedSet.remove(label) : selectedSet.add(label);
        });
      },
      selectedColor: Colors.teal,
      backgroundColor: Colors.transparent, // No grey background
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      showCheckmark: false, // Removes the tick mark
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: isSelected ? Colors.teal : Colors.grey.shade400,
          width: 1,
        ),
      ),
    );
  }

  void _applyFilters(BuildContext context) {
    double? caratMin = userMinCarat;
    double? caratMax = userMaxCarat;

    if (selectedShape.isEmpty) {
      _showError("Please select a shape.");
      return;
    }

    if (caratMin == null || caratMax == null || caratMin >= caratMax) {
      _showError("Please enter a valid carat range.");
      return;
    }

    final selectedLabs = labOptions.entries.where((e) => e.value).toList();
    if (selectedLabs.isEmpty) {
      _showError("Please select one lab option.");
      return;
    }

    final selectedLab = selectedLabs.first.key;
    final selectedShapeCode = shapeMap[selectedShape] ?? '';

    // Dispatch filter event to BLoC
    context.read<FilterBloc>().add(
      FilterEvent(
        caratFrom: caratMin,
        caratTo: caratMax,
        lab: selectedLab,
        shape: selectedShapeCode,
        color: selectedColor,
        clarity: selectedClarity,
      ),
    );

    // ✅ Clear selected values here
    setState(() {
      selectedShape = '';
      selectedColor = null;
      selectedClarity = null;
      userMinCarat = null;
      userMaxCarat = null;
      _caratRanges.clear();
      minController.clear();
      maxController.clear();
      labOptions.updateAll((key, value) => false);
    });

    // ✅ Delay and navigate
    Future.delayed(const Duration(milliseconds: 100), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(selectedShape: selectedShape),
        ),
      );
    });
  }

  Widget _buildSingleSelectChip(String label, String? selectedValue, void Function(String) onSelect) {
    final isSelected = selectedValue == label;
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) {
        setState(() {
          onSelect(label);
        });
      },
      selectedColor: Colors.teal,
      backgroundColor: Colors.transparent,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: isSelected ? Colors.teal : Colors.grey.shade400,
          width: 1,
        ),
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.cyan),
    );
  }


}
