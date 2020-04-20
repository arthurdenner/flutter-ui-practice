import 'package:flutter/material.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_card.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_indicator.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_info.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductPageView extends StatelessWidget {
  ProductPageView({
    Key key,
    @required this.activeIndex,
    @required this.isToggled,
    @required this.onChangeSwitch,
    @required this.onPageChanged,
  }) : super(key: key);

  final int activeIndex;
  final bool isToggled;
  final ValueChanged<bool> onChangeSwitch;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _top = isToggled ? _height * .3 : _height * .15;

    return AnimatedPositioned(
      curve: Curves.easeIn,
      duration: AppDurations.short,
      top: _top,
      left: 0,
      right: 0,
      child: Column(
        children: <Widget>[
          ProductInfo(
            isToggled: isToggled,
          ),
          SizedBox(height: 20),
          Container(
            height: _height * .25,
            child: PageView(
              onPageChanged: onPageChanged,
              children: <Widget>[
                ProductCard(
                  onChangeSwitch: onChangeSwitch,
                  switchValue: isToggled,
                ),
                ProductCard(
                  onChangeSwitch: onChangeSwitch,
                  switchValue: isToggled,
                ),
                ProductCard(
                  onChangeSwitch: onChangeSwitch,
                  switchValue: isToggled,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ProductIndicator(
            activeIndex: activeIndex,
            count: 3,
          ),
        ],
      ),
    );
  }
}
