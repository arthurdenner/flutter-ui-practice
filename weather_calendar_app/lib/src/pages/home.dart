import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/pages/widgets/details.dart';
import 'package:weather_calendar_app/src/pages/widgets/header.dart';
import 'package:weather_calendar_app/src/pages/widgets/sidebar.dart';
import 'package:weather_calendar_app/src/utils/math.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeIndex = 0;
  num _temperature = 15;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Header(),
            Expanded(
              child: Row(
                children: <Widget>[
                  Sidebar(
                    activeIndex: _activeIndex,
                    onSelect: _setActiveIndex,
                  ),
                  Details(
                    temperature: _temperature,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _setActiveIndex(int idx) {
    if (idx != _activeIndex) {
      setState(() {
        _activeIndex = idx;
        _temperature = integerInRange(Random(), 1, 30);
      });
    }
  }
}
