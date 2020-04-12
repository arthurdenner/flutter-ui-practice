import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

class NikeAppBar extends StatelessWidget {
  const NikeAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.short_text, size: 40),
          Image.asset(
            'assets/images/nike-logo.png',
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.main,
              borderRadius: BorderRadius.circular(100),
            ),
            height: 75,
            width: 40,
          ),
        ],
      ),
    );
  }
}
