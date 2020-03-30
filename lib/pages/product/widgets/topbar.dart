import 'package:flutter/material.dart';

class ProductTopbar extends StatelessWidget {
  const ProductTopbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.chevron_left,
              size: 40,
            ),
          ),
          Icon(
            Icons.favorite_border,
            size: 30,
          ),
        ],
      ),
    );
  }
}
