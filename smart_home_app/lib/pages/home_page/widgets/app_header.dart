import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _statusBarHeight = MediaQuery.of(context).padding.top;

    return Positioned(
      top: _statusBarHeight,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
              AppImages.logo,
              width: 25,
            ),
            Icon(
              Icons.menu,
              size: 40,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
