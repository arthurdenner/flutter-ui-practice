import 'package:flutter/material.dart';

const double SIDEBAR_SIZE = 0.3;
const double AVATAR_SIZE = 30;
const AVATAR =
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

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
                  Container(
                    color: Colors.grey,
                    width: sidebarSize,
                  ),
                  _buildDetails(width - sidebarSize),
                ],
              ),
            )
          ],
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
}
