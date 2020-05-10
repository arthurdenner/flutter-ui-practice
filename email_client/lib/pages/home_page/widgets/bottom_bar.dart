import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../../constants.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height * 0.15;

    return Container(
      height: _height,
      padding: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildIcon(icon: FontAwesome.star),
            _buildIcon(
              icon: FontAwesome.users,
              selected: true,
            ),
            _buildIcon(icon: FontAwesome.inbox),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon({IconData icon, bool selected = false}) {
    return Icon(
      icon,
      color: selected ? AppColors.white : AppColors.lightBlue,
      size: 30,
    );
  }
}
