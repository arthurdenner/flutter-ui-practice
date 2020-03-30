import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/models/product.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
  })  : assert(product != null),
        super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.description,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            product.brand.toUpperCase(),
            style: TextStyle(
              color: Colors.black26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                product.price,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF59a463),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '48 reviews',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      _buildStar(),
                      _buildStar(),
                      _buildStar(),
                      _buildStar(),
                      _buildStar(),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildStar() => Icon(
        Icons.star,
        color: Color(0xffffb67d),
      );
}
