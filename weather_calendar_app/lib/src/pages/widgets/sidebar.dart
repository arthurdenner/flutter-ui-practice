import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';
import 'package:weather_calendar_app/src/utils/media_query.dart';

const numOfDays = 7;
const weekDays = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
];

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
        child: Column(
          children: [
            if (!isSm) _buildBlankSpace(0),
            _buildList(isSm),
            if (!isSm) _buildBlankSpace(numOfDays),
          ],
        ),
      ),
    );
  }

  Widget _buildList(bool isSm) {
    final list = ListView.builder(
      itemCount: isSm ? numOfDays + 2 : numOfDays,
      itemBuilder: _buildSidebarTile,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
    );

    return isSm ? Expanded(child: list) : list;
  }

  Widget _buildBlankSpace(int index, [bool fixedSize = false]) {
    final child = Stack(
      children: <Widget>[
        Container(
          color: AppColors.purple,
          height: fixedSize ? 60 : null,
        ),
        Container(
          height: fixedSize ? 60 : null,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(activeIndex == index ? 30 : 0),
              topRight: Radius.circular(activeIndex + 1 == index ? 30 : 0),
            ),
          ),
        ),
      ],
    );

    return fixedSize ? child : Expanded(child: child);
  }

  Widget _buildSidebarTile(BuildContext context, int idx) {
    final isSm = isSmBreakpoint(context);

    if (isSm && idx == 0) {
      return _buildBlankSpace(0, isSm);
    } else if (isSm && idx == numOfDays + 1) {
      return _buildBlankSpace(numOfDays, isSm);
    }

    final index = isSm ? idx - 1 : idx;
    final isActive = index == activeIndex;
    final bgColor = isActive ? AppColors.purple : AppColors.white;
    final titleColor = isActive ? AppColors.white : Colors.black;
    final subtitleColor = isActive ? AppColors.white : Colors.black26;
    final date = (index + 1).toString().padLeft(2, '0');
    final weekday = weekDays[index];

    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            color: AppColors.purple,
          ),
        ),
        AnimatedContainer(
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
              horizontal: 25,
            ),
            title: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Feb $date',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 18,
                ),
              ),
            ),
            subtitle: Text(
              weekday.toUpperCase(),
              softWrap: false,
              style: TextStyle(
                color: subtitleColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
