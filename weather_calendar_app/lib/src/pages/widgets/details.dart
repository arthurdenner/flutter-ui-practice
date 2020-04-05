import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/pages/widgets/conditions.dart';
import 'package:weather_calendar_app/src/pages/widgets/quote.dart';
import 'package:weather_calendar_app/src/pages/widgets/temperature.dart';

class Details extends StatefulWidget {
  const Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  double _activeValue = 8;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Temperature(),
            SizedBox(height: 50),
            // Text('FLARE'),
            Conditions(),
            Quote(),
            SizedBox(height: 30),
            Slider(
              min: 8,
              max: 23,
              divisions: 5,
              onChanged: _setActiveValue,
              value: _activeValue,
              activeColor: Colors.cyan,
              inactiveColor: Colors.grey,
              label: '${_activeValue.toInt()}:00',
            ),
          ],
        ),
      ),
    );
  }

  void _setActiveValue(value) {
    setState(() => _activeValue = value);
  }
}
