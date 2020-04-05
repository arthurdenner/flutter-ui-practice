import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key key,
    @required this.activeIndex,
    @required this.onSelect,
  })  : assert(activeIndex != null),
        assert(onSelect != null),
        super(key: key);

  final int activeIndex;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final sidebarSize = width * SIDEBAR_SIZE;

    return Container(
      width: sidebarSize,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildBlankSpace(0),
          ListView.builder(
            itemCount: 5,
            itemBuilder: _buildSidebarTile,
            shrinkWrap: true,
          ),
          _buildBlankSpace(5),
        ],
      ),
    );
  }

  Widget _buildBlankSpace(int index) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(activeIndex == index ? 30 : 0),
            topRight: Radius.circular(activeIndex + 1 == index ? 30 : 0),
          ),
        ),
      ),
    );
  }

  Widget _buildSidebarTile(BuildContext context, int index) {
    final isActive = index == activeIndex;
    final bgColor = isActive ? Colors.purple : Colors.white;
    final titleColor = isActive ? Colors.white : Colors.black;
    final subtitleColor = isActive ? Colors.white : Colors.black26;

    return AnimatedContainer(
      duration: Duration(milliseconds: 50),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(activeIndex - 1 == index ? 30 : 0),
          topRight: Radius.circular(activeIndex + 1 == index ? 30 : 0),
        ),
      ),
      child: ListTile(
        onTap: () => onSelect(index),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        title: Text(
          'Day ${index + 1}',
          style: TextStyle(
            color: titleColor,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          'Day ${index + 1}'.toUpperCase(),
          style: TextStyle(
            color: subtitleColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
