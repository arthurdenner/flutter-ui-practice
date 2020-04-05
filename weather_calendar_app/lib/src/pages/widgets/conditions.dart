import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/models/weather_data.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

class Conditions extends StatelessWidget {
  const Conditions({
    Key key,
    @required this.data,
  }) : super(key: key);

  final WeatherData data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        _buildCondition(
          image: 'assets/icons/rain.png',
          label: '${data.precipitation}% Precipitation',
        ),
        _buildCondition(
          image: 'assets/icons/wind.png',
          label: '${data.wind} km/h Wind',
        ),
        _buildCondition(
          image: 'assets/icons/drop.png',
          label: '${data.humidity}% Humidity',
        ),
      ],
    );
  }

  Widget _buildCondition({
    @required String image,
    @required String label,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Image.asset(image, width: 30),
          ),
          Text(
            label,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
