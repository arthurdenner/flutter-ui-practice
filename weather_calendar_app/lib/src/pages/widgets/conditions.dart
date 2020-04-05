import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

class Condition {
  const Condition({
    @required this.icon,
    @required this.label,
  });

  final Widget icon;
  final String label;
}

final items = [
  Condition(
    icon: Image.asset('assets/icons/rain.png', width: 30),
    label: '90% Precipitation',
  ),
  Condition(
    icon: Image.asset('assets/icons/wind.png', width: 30),
    label: '17 km/h Wind',
  ),
  Condition(
    icon: Image.asset('assets/icons/drop.png', width: 30),
    label: '30% Humidity',
  ),
];

class Conditions extends StatelessWidget {
  const Conditions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        final item = items[index];

        return Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: item.icon,
              ),
              Text(
                item.label,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
