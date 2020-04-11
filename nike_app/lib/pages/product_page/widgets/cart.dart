import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: EdgeInsets.symmetric(vertical: 25),
      color: AppColors.highlight_bg,
      child: Column(
        children: <Widget>[
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(height: 15),
          Text(
            '\$120',
            style: TextStyle(
              color: AppColors.highlight_text,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
