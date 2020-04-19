import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

const double DOT_SIZE = 8;

class ProductIndicator extends StatelessWidget {
  const ProductIndicator({
    Key key,
    this.activeIndex,
    this.count,
  }) : super(key: key);

  final int activeIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => AnimatedContainer(
          duration: AppDurations.short,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: activeIndex == index ? AppColors.white : AppColors.darkGrey,
            shape: BoxShape.circle,
          ),
          width: DOT_SIZE,
          height: DOT_SIZE,
        ),
      ),
    );
  }
}
