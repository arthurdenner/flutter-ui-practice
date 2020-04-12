import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(35),
        ),
        child: FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.shopping_cart,
                color: AppColors.white,
              ),
              Text(
                'Add to Cart'.toUpperCase(),
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                '\$120',
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
