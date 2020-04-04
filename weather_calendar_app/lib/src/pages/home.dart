import 'package:flutter/material.dart';

const SIDEBAR_SIZE = 0.3;

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            _buildHeader(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Los Angeles'),
              Text('Feb 03, Tuesday'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.person),
              Column(
                children: <Widget>[
                  Text('Alexander Paul'),
                  Text('Basic level'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
