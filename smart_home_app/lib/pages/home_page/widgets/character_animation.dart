import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class CharacterAnimation extends StatefulWidget {
  CharacterAnimation({
    Key key,
    @required this.isToggled,
  }) : super(key: key);

  final bool isToggled;

  @override
  _CharacterAnimationState createState() => _CharacterAnimationState();
}

class _CharacterAnimationState extends State<CharacterAnimation> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _size = _width / 1.5;
    final _cloud1Top = widget.isToggled ? 0.0 : _size / 1.6;
    final _cloud2Top = widget.isToggled ? 0.0 : _size / 1.3;

    return Positioned(
      top: _size / 2 * -1,
      left: 0,
      right: 0,
      child: Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          color: AppColors.red,
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: AppDurations.short,
              top: _cloud1Top,
              left: 150,
              child: Image.network(
                AppImages.nuvem,
                width: 30,
              ),
            ),
            AnimatedPositioned(
              duration: AppDurations.short,
              top: _cloud2Top,
              left: 220,
              child: Image.network(
                AppImages.nuvem,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
