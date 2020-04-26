import 'package:flutter/material.dart';

class PortfolioHero extends StatelessWidget {
  const PortfolioHero({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Container(
      height: _height * .8,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: _height * .05),
            child: Image.asset(
              'assets/img/logo.png',
              height: _height * .2,
            ),
          ),
          Container(
            width: _width * .6,
            child: Text(
              'Shooting eye-catching moments for fun',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: _width * .35,
            child: Text(
              'Every image is a story in frame. Discover my most popular images and uncover the stories behind them.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            color: Color(0xFF3540ff),
            onPressed: () {},
            child: Text(
              'Discover my work',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
