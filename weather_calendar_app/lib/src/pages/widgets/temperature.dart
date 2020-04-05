import 'package:flutter/material.dart';

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
                  color: Colors.white,
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
                  color: Colors.grey,
                  fontSize: 60,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
        Text(
          '8:00 PM, Heavy rain',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ),
      ],
    );
  }
}
