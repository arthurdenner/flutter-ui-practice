import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/screens/home/best_deals.dart';
import 'package:flutterando_perfume_ecommerce_challenge/screens/home/category.dart';
import 'package:flutterando_perfume_ecommerce_challenge/screens/home/filter.dart';
import 'package:flutterando_perfume_ecommerce_challenge/screens/home/products.dart';
import 'package:flutterando_perfume_ecommerce_challenge/screens/home/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Topbar(),
            SizedBox(height: 25),
            _buildHeader(context),
            SizedBox(height: 25),
            Filters(),
            SizedBox(height: 20),
            _buildProducts(context),
            SizedBox(height: 20),
            BestDeals(),
          ],
        ),
      ),
    );
  }

  Widget _buildProducts(BuildContext context) {
    final padding = MediaQuery.of(context).size.width / 12;

    return Container(
      height: 400,
      padding: EdgeInsets.only(left: padding),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ProductCategories(),
          Products(),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 12,
      ),
      child: Text(
        'Perfume',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
