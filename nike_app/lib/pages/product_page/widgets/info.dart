import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 60),
      child: Column(
        children: <Widget>[
          Text(
            "Men's Running Jacket".toUpperCase(),
            style: TextStyle(
              color: AppColors.darkGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 200,
            child: Text(
              "Nike Windrunner Wild Run".toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                height: 1.1,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "\$120",
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
