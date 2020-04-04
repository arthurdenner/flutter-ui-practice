import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

const double SIDEBAR_SIZE = 0.3;
const double AVATAR_SIZE = 30;
const AVATAR =
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sidebarSize = width * SIDEBAR_SIZE;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            _buildHeader(context),
            SizedBox(height: 50),
            Expanded(
              child: Row(
                children: <Widget>[
                  _buildSidebar(sidebarSize),
                  _buildDetails(width - sidebarSize),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSidebar(double width) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 50),
      child: ListView.builder(
        itemCount: dates.length,
        itemBuilder: _buildSidebarTile,
      ),
    );
  }

  Widget _buildSidebarTile(BuildContext context, int index) {
    final date = dates[index];
    final isActive = index == _activeIndex;
    final bgColor = isActive ? Colors.purple : Colors.white;
    final titleColor = isActive ? Colors.white : Colors.black;
    final subtitleColor = isActive ? Colors.white : Colors.black26;

    return Container(
      color: bgColor,
      child: ListTile(
        onTap: () => _setActiveIndex(index),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 80,
        ),
        title: Text(
          date.dateOfYear,
          style: TextStyle(
            color: titleColor,
            fontSize: 24,
          ),
        ),
        subtitle: Text(
          date.dayOfWeek.toUpperCase(),
          style: TextStyle(
            color: subtitleColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildDetails(double width) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final sidebarSize = MediaQuery.of(context).size.width * SIDEBAR_SIZE;

    return Padding(
      padding: EdgeInsets.fromLTRB(sidebarSize, 20, 50, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Los Angeles',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Feb 03, Tuesday',
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: AVATAR_SIZE,
                  child: Image.network(AVATAR),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Alexander Paul',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Basic level',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _setActiveIndex(int idx) {
    setState(() => _activeIndex = idx);
  }
}
