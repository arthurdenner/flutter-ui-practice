import 'package:flutter/material.dart';
import 'package:nike_app/pages/product_page/widgets/app_bar.dart';
import 'package:nike_app/pages/product_page/widgets/sidebar.dart';
import 'package:nike_app/utils/constants.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            NikeAppBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  ProductSidebar(),
                  Expanded(
                    child: Container(
                      color: AppColors.main,
                      padding: EdgeInsets.only(top: 50),
                      child: Image.asset('assets/images/front-jacket.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
