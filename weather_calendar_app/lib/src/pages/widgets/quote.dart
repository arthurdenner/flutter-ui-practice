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
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Image.asset('assets/icons/quote.png', height: 25),
        _buildQuote(context),
      ],
    );
  }

  Widget _buildQuote(BuildContext context) {
    final child = Padding(
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
    );

    return Expanded(child: child);
  }
}
