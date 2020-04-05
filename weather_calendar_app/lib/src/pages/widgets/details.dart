import 'package:flutter/material.dart';
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
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(activeIndex != 0 ? 30 : 0),
        ),
      ),
    );
  }
}
