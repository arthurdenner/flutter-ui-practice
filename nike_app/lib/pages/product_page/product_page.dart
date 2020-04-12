import 'package:flutter/material.dart';
import 'package:nike_app/pages/product_page/widgets/add_to_cart.dart';
import 'package:nike_app/pages/product_page/widgets/app_bar.dart';
import 'package:nike_app/pages/product_page/widgets/card.dart';
import 'package:nike_app/pages/product_page/widgets/images.dart';
import 'package:nike_app/utils/constants.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            NikeAppBar(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  ProductImages(),
                  ProductCart(),
                  AddToCartButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
