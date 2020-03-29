import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/models/product.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/product/product_page.dart';

class Products extends StatelessWidget {
  const Products({Key key}) : super(key: key);

  static final _products = [
    Product(
      image: 'assets/images/coco-noir.png',
      description: 'Chanel Coco Noir',
      price: '€ 99.50',
    ),
    Product(
      image: 'assets/images/coco-noir.png',
      description: 'Orange Sanguine',
      price: '€ 121.00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _products.length,
        itemBuilder: (_, index) => ProductItem(product: _products[index]),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key key,
    @required this.product,
  })  : assert(product != null),
        super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    const double size = 60;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () => _goToProductPage(context),
            child: Container(
              margin: EdgeInsets.only(right: 24),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.lightGreen, Colors.green],
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        product.image,
                        width: 120,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                        width: size,
                        height: size,
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            size: 32,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        ProductDescription(product: product),
      ],
    );
  }

  void _goToProductPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ProductPage(
          product: product,
        ),
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
  })  : assert(product != null),
        super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          product.description,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          product.price,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
