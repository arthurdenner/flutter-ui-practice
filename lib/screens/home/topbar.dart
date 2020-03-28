import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          _buildShoppingIcon(),
        ],
      ),
    );
  }

  Widget _buildShoppingIcon() {
    const double dotSize = 8;

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(Icons.shopping_basket),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(dotSize),
            ),
            width: dotSize,
            height: dotSize,
          ),
        )
      ],
    );
  }
}
