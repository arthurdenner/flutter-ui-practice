import 'package:flutter/material.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_card.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_indicator.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductPageView extends StatefulWidget {
  ProductPageView({
    Key key,
    @required this.isToggled,
    @required this.onChangeSwitch,
  }) : super(key: key);

  final bool isToggled;
  final ValueChanged<bool> onChangeSwitch;

  @override
  _ProductPageViewState createState() => _ProductPageViewState();
}

class _ProductPageViewState extends State<ProductPageView> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _top = widget.isToggled ? _height * .32 : _height * .2;

    return AnimatedPositioned(
      duration: AppDurations.medium,
      top: _top,
      left: 0,
      right: 0,
      child: Column(
        children: <Widget>[
          Container(
            height: _height * .25,
            child: PageView(
              onPageChanged: _onPageChanged,
              children: <Widget>[
                ProductCard(
                  onChangeSwitch: widget.onChangeSwitch,
                  switchValue: widget.isToggled,
                ),
                ProductCard(
                  onChangeSwitch: widget.onChangeSwitch,
                  switchValue: widget.isToggled,
                ),
                ProductCard(
                  onChangeSwitch: widget.onChangeSwitch,
                  switchValue: widget.isToggled,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ProductIndicator(
            activeIndex: _activeIndex,
            count: 3,
          ),
        ],
      ),
    );
  }

  void _onPageChanged(int value) {
    setState(() => _activeIndex = value);
  }
}
