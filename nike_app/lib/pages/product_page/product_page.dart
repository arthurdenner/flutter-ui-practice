import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nike_app/pages/product_page/widgets/app_bar.dart';
import 'package:nike_app/pages/product_page/widgets/card.dart';
import 'package:nike_app/pages/product_page/widgets/images.dart';
import 'package:nike_app/pages/product_page/widgets/info.dart';
import 'package:nike_app/pages/product_page/widgets/sizes.dart';
import 'package:nike_app/utils/constants.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.main,
        body: Column(
          children: <Widget>[
            NikeAppBar(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  ProductImages(),
                  ProductCart(),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          Text(
                            'Add to Cart'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$120',
                            style: TextStyle(
                              color: Color(0xFFC7C7C7),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
