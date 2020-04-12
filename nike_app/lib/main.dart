import 'package:flutter/material.dart';
import 'package:nike_app/pages/product_page/product_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Store',
      theme: ThemeData(
        fontFamily: 'BebasNeue',
      ),
      home: ProductPage(),
    );
  }
}
