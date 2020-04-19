import 'package:flutter/material.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_card.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_indicator.dart';

class ProductPageView extends StatefulWidget {
  ProductPageView({Key key}) : super(key: key);

  @override
  _ProductPageViewState createState() => _ProductPageViewState();
}

class _ProductPageViewState extends State<ProductPageView> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return Positioned(
      top: _height * .2,
      left: 0,
      right: 0,
      child: Column(
        children: <Widget>[
          Container(
            height: _height * .25,
            child: PageView(
              onPageChanged: _onPageChanged,
              children: <Widget>[
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
          ),
          SizedBox(height: 30),
          ProductIndicator(
            activeIndex: _activeIndex,
            count: 3,
          ),
        ],
      ),
    );
  }

  void _onPageChanged(int value) {
    setState(() => _activeIndex = value);
  }
}
