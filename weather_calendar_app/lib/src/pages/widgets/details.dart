import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/pages/widgets/conditions.dart';
import 'package:weather_calendar_app/src/pages/widgets/quote.dart';
import 'package:weather_calendar_app/src/pages/widgets/temperature.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

class Details extends StatelessWidget {
  const Details({
    Key key,
    @required this.activeIndex,
  })  : assert(activeIndex != null),
        super(key: key);

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sidebarSize = width * SIDEBAR_SIZE;

    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: width - sidebarSize,
      padding: EdgeInsets.all(100),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(activeIndex != 0 ? 30 : 0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Temperature(),
              Text('FLARE'),
            ],
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Conditions(),
              Quote(),
            ],
          ),
        ],
      ),
    );
  }
}
