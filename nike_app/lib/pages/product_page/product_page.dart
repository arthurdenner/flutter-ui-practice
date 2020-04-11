import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nike_app/pages/product_page/widgets/app_bar.dart';
import 'package:nike_app/pages/product_page/widgets/images.dart';
import 'package:nike_app/utils/constants.dart';

const sizes = ['S', 'M', 'L', 'XL', '2XL', '3XL'];

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String selectedSize = 'M';

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
                  Positioned(
                    bottom: 25,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.38,
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
                              // color: Colors.grey.shade200.withOpacity(0.5),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                stops: [0.5, 0.85, 0.9],
                                colors: [
                                  Colors.white,
                                  Colors.white.withOpacity(.9),
                                  Colors.white.withOpacity(.8)
                                ],
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: sizes.map(_buildSize).toList(),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      bottom: 30,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "Men's Running Jacket".toUpperCase(),
                                          style: TextStyle(
                                            color: Color(0xFF868686),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 50,
                                          ),
                                          child: Text(
                                            "Nike Windrunner Wild Run"
                                                .toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "\$120",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSize(String label) {
    final isSelected = label == selectedSize;

    return Expanded(
      child: Container(
        color: isSelected ? Colors.white : null,
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
    );
  }
}
