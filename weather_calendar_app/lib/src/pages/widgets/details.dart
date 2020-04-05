import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/pages/widgets/conditions.dart';
import 'package:weather_calendar_app/src/pages/widgets/hour_slider.dart';
import 'package:weather_calendar_app/src/pages/widgets/quote.dart';
import 'package:weather_calendar_app/src/pages/widgets/temperature.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';
import 'package:weather_calendar_app/src/utils/media_query.dart';

class Details extends StatefulWidget {
  const Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  double _activeValue = 8;

  @override
  Widget build(BuildContext context) {
    final isSm = isSmBreakpoint(context);

    return Expanded(
      flex: isSm ? 4 : 2,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: AppColors.purple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    final isSm = isSmBreakpoint(context);
    final children = _buildChildren(isSm);

    return isSm
        ? ListView(children: children)
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: children,
          );
  }

  List<Widget> _buildChildren(bool isSm) {
    final mainAlignment =
        isSm ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center;

    return <Widget>[
      Row(
        mainAxisAlignment: mainAlignment,
        children: <Widget>[
          Temperature(),
          if (isSm) _buildAnimation(),
        ],
      ),
      SizedBox(height: 30),
      _buildConditionsAndQuote(),
      SizedBox(height: 30),
      HourSlider(
        onChange: _setActiveValue,
        value: _activeValue,
      ),
    ];
  }

  Widget _buildConditionsAndQuote() {
    final isSm = isSmBreakpoint(context);
    final children = [
      isSm ? Expanded(child: Conditions()) : Conditions(),
      if (!isSm) SizedBox(height: 20),
      isSm ? Expanded(child: Quote()) : Quote(),
    ];

    return Flex(
      direction: isSm ? Axis.horizontal : Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: children,
    );
  }

  Widget _buildAnimation() {
    return Text(
      'ANIMATION',
      style: TextStyle(
        color: AppColors.white,
        fontSize: 20,
      ),
    );
  }

  void _setActiveValue(value) {
    setState(() => _activeValue = value);
  }
}
