import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/media_query.dart';

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
    final isSm = isSmBreakpoint(context);

    return Expanded(
      child: Container(
        color: Colors.purple,
        child: Column(children: [
          if (!isSm) _buildBlankSpace(0),
          _buildList(isSm),
          if (!isSm) _buildBlankSpace(5),
        ]),
      ),
    );
  }

  Widget _buildList(bool isSm) {
    final list = ListView.builder(
      itemCount: isSm ? 7 : 5,
      itemBuilder: _buildSidebarTile,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );

    return isSm ? Expanded(child: list) : list;
  }

  Widget _buildBlankSpace(int index, [bool fixedSize = false]) {
    final child = Container(
      height: fixedSize ? 60 : null,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(activeIndex == index ? 30 : 0),
          topRight: Radius.circular(activeIndex + 1 == index ? 30 : 0),
        ),
      ),
    );

    return fixedSize ? child : Expanded(child: child);
  }

  Widget _buildSidebarTile(BuildContext context, int idx) {
    final isSm = isSmBreakpoint(context);

    if (isSm && idx == 0) {
      return _buildBlankSpace(0, isSm);
    } else if (isSm && idx == 6) {
      return _buildBlankSpace(5, isSm);
    }

    final index = isSm ? idx - 1 : idx;
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
          vertical: 5,
          horizontal: 30,
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Day ${index + 1}',
            style: TextStyle(
              color: titleColor,
              fontSize: 18,
            ),
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
