import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/pages/widgets/animated_value.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

class Temperature extends StatelessWidget {
  const Temperature({
    Key key,
    @required this.value,
  })  : assert(value != null),
        super(key: key);

  final num value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: AnimatedValue(value: value),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            '°C',
            style: TextStyle(
              color: AppColors.lightPurple,
              fontSize: 60,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}
