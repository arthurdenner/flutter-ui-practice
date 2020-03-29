import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/models/product.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/products.dart';

class BestDealsProduct extends StatelessWidget {
  const BestDealsProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).size.width / 12;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(padding / 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: padding / 2),
                  padding: EdgeInsets.symmetric(
                    vertical: padding / 4,
                    horizontal: padding / 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF8bb957), Color(0xFF59a463)],
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/coco-noir.png',
                    height: 80,
                  ),
                ),
                ProductDescription(
                  product: Product(
                    image: 'assets/images/coco-noir.png',
                    description: 'Chanel Coco Noir',
                    price: '€ 99.50',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color: Color(0xffffb67d),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  '- 20%',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
