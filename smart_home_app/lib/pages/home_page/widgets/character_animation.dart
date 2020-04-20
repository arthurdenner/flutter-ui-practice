import 'dart:math';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class CharacterAnimation extends StatefulWidget {
  const CharacterAnimation({
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
    final isToggled = widget.isToggled;
    final _height = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;
    final _statusBarHeight = MediaQuery.of(context).padding.top;

    final _cloud1Top = isToggled ? _height * -.1 : _height * .03;
    final _cloud2Top = isToggled ? _height * -.1 : _height * .05;

    final _bubbleLeft = isToggled ? _screenWidth / 2 : 0.0;
    final _bubbleRight = isToggled ? _screenWidth * -1 : 0.0;
    final _bubbleRadius = isToggled ? _screenWidth * 1.5 : _screenWidth / 2;
    final _bubbleTop = isToggled ? -(_bubbleRadius / 4) : -(_bubbleRadius / 2);

    final _dollTop = isToggled ? _height * .05 : _height / 4;
    final _dollHeight = isToggled ? _height * .27 : 0.0;

    final _lightning1Top = isToggled ? _height * .04 : _height / 4;
    final _lightning1Left = isToggled ? _screenWidth * .25 : _screenWidth * .5;
    final _lightning2Top = isToggled ? _height * .1 : _height / 4;
    final _lightning2Left = isToggled ? _screenWidth * .1 : _screenWidth * .5;
    final _lightning3Top = isToggled ? _height * .03 : _height / 4;
    final _lightning3Left = isToggled ? _screenWidth * .65 : _screenWidth * .5;
    final _lightning4Top = isToggled ? _height * .11 : _height / 4;
    final _lightning4Left = isToggled ? _screenWidth * .8 : _screenWidth * .5;

    return Container(
      height: isToggled ? _height * .45 : _height * .4,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _bubbleTop + _statusBarHeight,
            left: _bubbleLeft,
            right: _bubbleRight,
            child: AnimatedContainer(
              duration: AppDurations.short,
              width: _bubbleRadius,
              height: _bubbleRadius,
              decoration: BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _dollTop + _statusBarHeight,
            left: 0,
            right: 0,
            child: AnimatedContainer(
              duration: AppDurations.short,
              height: _dollHeight,
              child: Image.network(
                AppImages.boneco,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _lightning1Top + _statusBarHeight,
            left: _lightning1Left,
            child: Image.network(
              AppImages.raio,
              width: 25,
            ),
          ),
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _lightning2Top + _statusBarHeight,
            left: _lightning2Left,
            child: Image.network(
              AppImages.raio,
              width: 35,
            ),
          ),
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _lightning3Top + _statusBarHeight,
            left: _lightning3Left,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: Image.network(
                AppImages.raio,
                width: 30,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _lightning4Top + _statusBarHeight,
            left: _lightning4Left,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: Image.network(
                AppImages.raio,
                width: 35,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _cloud1Top + _statusBarHeight,
            left: _screenWidth * .35,
            child: Image.network(
              AppImages.nuvem,
              width: 30,
            ),
          ),
          AnimatedPositioned(
            duration: AppDurations.short,
            top: _cloud2Top + _statusBarHeight,
            left: _screenWidth * .5,
            child: Image.network(
              AppImages.nuvem,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
