import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: AppColors.cyan,
          inactiveTrackColor: AppColors.lightPurple,
          trackHeight: 4,
          thumbColor: AppColors.cyan,
          trackShape: RectangularSliderTrackShape(),
          overlayColor: AppColors.lightPurple.withOpacity(0.5),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 28),
          activeTickMarkColor: Colors.transparent,
          inactiveTickMarkColor: Colors.transparent,
          valueIndicatorColor: AppColors.cyan,
          valueIndicatorTextStyle: TextStyle(color: AppColors.purple),
        ),
        child: Slider.adaptive(
          min: 8,
          max: 23,
          divisions: 5,
          onChanged: onChange,
          value: value,
          label: formatHour(value),
        ),
      ),
    );
  }
}
