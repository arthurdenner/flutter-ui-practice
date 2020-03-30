import 'dart:io';
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
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            if (Platform.isAndroid) SizedBox(height: statusBarHeight),
            Topbar(),
            SizedBox(height: 20),
            _buildHeader(context),
            SizedBox(height: 30),
            Filters(),
            SizedBox(height: 30),
            _buildProducts(context),
            SizedBox(height: 50),
            BestDeals(),
            SizedBox(height: 20),
            BestDealsProduct(),
          ],
        ),
      ),
    );
  }

  Widget _buildProducts(BuildContext context) {
    return Container(
      height: 380,
      padding: EdgeInsets.only(left: 30),
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
      padding: EdgeInsets.symmetric(horizontal: 30),
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
