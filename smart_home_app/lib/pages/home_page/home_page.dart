import 'package:flutter/material.dart';
import 'package:smart_home_app/pages/home_page/widgets/add_device.dart';
import 'package:smart_home_app/pages/home_page/widgets/app_header.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_info.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_list.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_page_view.dart';
import 'package:smart_home_app/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: AppColors.blue,
                child: Column(
                  children: <Widget>[
                    AppHeader(),
                    ProductInfo(),
                    ProductPageView(),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ProductList(),
              AddDevice(),
            ],
          ),
        ),
      ),
    );
  }
}
