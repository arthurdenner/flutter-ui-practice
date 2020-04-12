import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nike_app/pages/product_page/widgets/info.dart';
import 'package:nike_app/pages/product_page/widgets/sizes.dart';
import 'package:nike_app/utils/constants.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      right: 0,
      left: 0,
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.5, 0.85, 0.9],
                  colors: [
                    AppColors.white,
                    AppColors.white.withOpacity(.9),
                    AppColors.white.withOpacity(.7)
                  ],
                ),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: <Widget>[
                  ProductSizes(),
                  ProductInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
