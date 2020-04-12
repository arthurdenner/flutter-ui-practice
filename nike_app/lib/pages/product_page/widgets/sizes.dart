import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

const sizes = ['S', 'M', 'L', 'XL', '2XL', '3XL'];

class ProductSizes extends StatefulWidget {
  const ProductSizes({Key key}) : super(key: key);

  @override
  _ProductSizesState createState() => _ProductSizesState();
}

class _ProductSizesState extends State<ProductSizes> {
  String selectedSize = 'M';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: sizes.map(_buildSize).toList(),
      ),
    );
  }

  Widget _buildSize(String label) {
    final isSelected = label == selectedSize;

    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => selectedSize = label),
        child: AnimatedContainer(
          duration: AppDurations.short,
          color: isSelected ? Colors.white : Colors.white.withOpacity(0),
          margin: EdgeInsets.symmetric(horizontal: 6),
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
