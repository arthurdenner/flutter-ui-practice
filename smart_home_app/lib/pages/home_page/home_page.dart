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
    final _height = MediaQuery.of(context).size.height;
    final _bottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: _height * .5,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        color: AppColors.blue,
                        height: _height * .4,
                      ),
                    ),
                    ProductPageView(),
                    ProductInfo(),
                    AppHeader(),
                  ],
                ),
              ),
              Container(
                color: AppColors.white,
                padding: EdgeInsets.only(bottom: _bottom),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    ProductList(),
                    AddDevice(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
