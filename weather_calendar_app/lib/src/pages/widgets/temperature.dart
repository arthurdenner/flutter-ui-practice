import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';
import 'package:weather_calendar_app/src/utils/media_query.dart';

class Temperature extends StatelessWidget {
  const Temperature({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                '15',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 100,
                  height: 1,
                  letterSpacing: -10,
                ),
              ),
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
        ),
        SizedBox(height: 10),
        Text(
          '8:00 PM, Heavy rain',
          style: TextStyle(
            color: AppColors.lightBlue,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ),
      ],
    );
  }
}
