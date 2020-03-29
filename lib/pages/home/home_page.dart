import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/best_deals.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/best_deals_product.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/categories.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/filters.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/products.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Topbar(),
            SizedBox(height: 20),
            _buildHeader(context),
            SizedBox(height: 30),
            Filters(),
            SizedBox(height: 30),
            _buildProducts(context),
            Expanded(child: Container()),
            BestDeals(),
            SizedBox(height: 30),
            BestDealsProduct(),
          ],
        ),
      ),
    );
  }

  Widget _buildProducts(BuildContext context) {
    final padding = MediaQuery.of(context).size.width / 12;

    return Container(
      height: 380,
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
    final padding = MediaQuery.of(context).size.width / 12;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
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
