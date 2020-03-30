import 'package:flutter/foundation.dart';

class Product {
  const Product({
    @required this.brand,
    @required this.image,
    @required this.description,
    @required this.price,
  })  : assert(brand != null),
        assert(image != null),
        assert(description != null),
        assert(price != null);

  final String brand;
  final String description;
  final String image;
  final String price;
}
