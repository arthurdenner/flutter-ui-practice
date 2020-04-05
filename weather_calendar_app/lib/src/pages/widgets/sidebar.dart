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
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: _buildSidebarTile,
      ),
    );
  }

  Widget _buildSidebarTile(BuildContext context, int index) {
    final isActive = index == activeIndex;
    final bgColor = isActive ? Colors.purple : Colors.white;
    final titleColor = isActive ? Colors.white : Colors.black;
    final subtitleColor = isActive ? Colors.white : Colors.black26;

    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(activeIndex - 1 == index ? 50 : 0),
          topRight: Radius.circular(activeIndex + 1 == index ? 50 : 0),
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
}
