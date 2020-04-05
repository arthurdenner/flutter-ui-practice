import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

const MESSAGE = 'Nullam in viverra leo. Duis interdum augue sed ante rutrum.';

class Quote extends StatelessWidget {
  const Quote({
    Key key,
  }) : super(key: key);

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
              MESSAGE,
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
