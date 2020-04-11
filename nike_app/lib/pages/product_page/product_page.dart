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
        backgroundColor: AppColors.main,
        body: Column(
          children: <Widget>[
            NikeAppBar(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(16),
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.55,
                          child: Image.asset('assets/images/front-jacket.png'),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Image.asset('assets/images/back-jacket.png'),
                          ),
                        ),
                      ],
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
