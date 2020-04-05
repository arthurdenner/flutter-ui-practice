import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/pages/widgets/details.dart';
import 'package:weather_calendar_app/src/pages/widgets/header.dart';
import 'package:weather_calendar_app/src/pages/widgets/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeIndex = 0;

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
                  Details(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _setActiveIndex(int idx) {
    setState(() => _activeIndex = idx);
  }
}
