import 'package:flutter/material.dart';
import 'package:nike_app/pages/product_page/widgets/cart.dart';
import 'package:nike_app/pages/product_page/widgets/size.dart';

const sizes = ['S', 'M', 'L', 'XL', 'XXL'];

class ProductSidebar extends StatefulWidget {
  ProductSidebar({Key key}) : super(key: key);

  @override
  _ProductSidebarState createState() => _ProductSidebarState();
}

class _ProductSidebarState extends State<ProductSidebar> {
  String selectedSize = 'M';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Column(
                children: sizes
                    .map(
                      (size) => ProductSize(
                        label: size,
                        isSelected: size == selectedSize,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          ProductCart(),
        ],
      ),
    );
  }
}
