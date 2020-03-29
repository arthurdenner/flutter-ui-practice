import 'package:flutter/foundation.dart';

class Product {
  const Product({
    @required this.image,
    @required this.description,
    @required this.price,
  })  : assert(image != null),
        assert(description != null),
        assert(price != null);

  final String description;
  final String image;
  final String price;
}
