import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '15',
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                height: 1,
              ),
            ),
            Text(
              '°C',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 60,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          '8:00 PM, Heavy rain',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            height: 1,
          ),
        ),
      ],
    );
  }
}
