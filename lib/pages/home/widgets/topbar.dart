import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/dot.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.short_text,
            size: 40,
          ),
          _buildShoppingIcon(),
        ],
      ),
    );
  }

  Widget _buildShoppingIcon() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            Icons.shopping_basket,
            size: 30,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Dot(),
        ),
      ],
    );
  }
}
