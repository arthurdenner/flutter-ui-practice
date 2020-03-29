import 'package:flutter/material.dart';

class BestDeals extends StatelessWidget {
  const BestDeals({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).size.width / 12;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Best deals',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'All'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.black26,
                    size: 28,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
