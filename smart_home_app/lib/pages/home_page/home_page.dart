import 'package:flutter/material.dart';
import 'package:smart_home_app/pages/home_page/widgets/add_device.dart';
import 'package:smart_home_app/pages/home_page/widgets/app_header.dart';
import 'package:smart_home_app/pages/home_page/widgets/character_animation.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_info.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_list.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_page_view.dart';
import 'package:smart_home_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _bottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              duration: AppDurations.short,
              curve: Curves.easeIn,
              color: Colors.white,
              height: _isToggled ? _height * .65 : _height * .5,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: AnimatedContainer(
                      color: AppColors.blue,
                      curve: Curves.easeIn,
                      duration: AppDurations.short,
                      height: _isToggled ? _height * .45 : _height * .4,
                    ),
                  ),
                  CharacterAnimation(
                    isToggled: _isToggled,
                  ),
                  ProductPageView(
                    isToggled: _isToggled,
                    onChangeSwitch: _onChangeSwitch,
                  ),
                  ProductInfo(
                    isToggled: _isToggled,
                  ),
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
    );
  }

  void _onChangeSwitch(bool value) {
    setState(() => _isToggled = !_isToggled);
  }
}
