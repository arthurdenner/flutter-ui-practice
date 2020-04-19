import 'package:flutter/foundation.dart';

class Product {
  const Product({
    @required this.image,
    @required this.name,
    @required this.status,
  });

  final String image;
  final String name;
  final String status;
}
