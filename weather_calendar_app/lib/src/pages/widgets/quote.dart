import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

class Quote extends StatelessWidget {
  const Quote({
    Key key,
    @required this.quote,
  }) : super(key: key);

  final String quote;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset('assets/icons/quote.png', height: 25),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Text(
              quote,
              softWrap: true,
              style: TextStyle(
                color: AppColors.white,
                fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
