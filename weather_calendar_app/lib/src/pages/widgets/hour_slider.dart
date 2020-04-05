import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/format.dart';

class HourSlider extends StatelessWidget {
  const HourSlider({
    Key key,
    @required this.onChange,
    @required this.value,
  }) : super(key: key);

  final ValueChanged<double> onChange;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 8,
      max: 23,
      divisions: 5,
      onChanged: onChange,
      value: value,
      activeColor: Colors.cyan,
      inactiveColor: Colors.grey,
      label: formatHour(value),
    );
  }
}
