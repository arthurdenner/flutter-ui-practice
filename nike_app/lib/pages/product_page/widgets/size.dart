import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({
    Key key,
    @required this.label,
    this.isSelected: false,
  }) : super(key: key);

  final label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: AnimatedContainer(
          duration: AppDurations.short,
          color: isSelected ? AppColors.bg_contrast : null,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
