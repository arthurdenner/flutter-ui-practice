import 'package:flutter/material.dart';

const double SIDEBAR_SIZE = 0.3;
const double AVATAR_SIZE = 30;

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
      color: Colors.purple,
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: _buildSidebarTile,
      ),
    );
  }

  Widget _buildSidebarTile(BuildContext context, int index) {
    final isActive = index == _activeIndex;
    final bgColor = isActive ? Colors.purple : Colors.white;
    final titleColor = isActive ? Colors.white : Colors.black;
    final subtitleColor = isActive ? Colors.white : Colors.black26;

    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(_activeIndex - 1 == index ? 50 : 0),
          topRight: Radius.circular(_activeIndex + 1 == index ? 50 : 0),
        ),
      ),
      child: ListTile(
        onTap: () => _setActiveIndex(index),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 80,
        ),
        title: Text(
          'Day ${index + 1}',
          style: TextStyle(
            color: titleColor,
            fontSize: 24,
          ),
        ),
        subtitle: Text(
          'Day ${index + 1}'.toUpperCase(),
          style: TextStyle(
            color: subtitleColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildDetails(double width) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: width,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_activeIndex != 0 ? 30 : 0),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final sidebarSize = MediaQuery.of(context).size.width * SIDEBAR_SIZE;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(sidebarSize, 20, 50, 100),
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
                  backgroundColor: Colors.black,
                  radius: AVATAR_SIZE,
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
