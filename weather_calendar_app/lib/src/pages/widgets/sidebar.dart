import 'package:flutter/material.dart';

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
    return Expanded(
      child: Container(
        color: Colors.purple,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: _buildSidebarTile,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlankSpace(int index) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(activeIndex == index ? 30 : 0),
          topRight: Radius.circular(activeIndex + 1 == index ? 30 : 0),
        ),
      ),
    );
  }

  Widget _buildSidebarTile(BuildContext context, int index) {
    if (index == 0) {
      return _buildBlankSpace(0);
    } else if (index == 6) {
      return _buildBlankSpace(5);
    }

    final actualIndex = index - 1;
    final isActive = actualIndex == activeIndex;
    final bgColor = isActive ? Colors.purple : Colors.white;
    final titleColor = isActive ? Colors.white : Colors.black;
    final subtitleColor = isActive ? Colors.white : Colors.black26;

    return AnimatedContainer(
      duration: Duration(milliseconds: 50),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(activeIndex - 1 == actualIndex ? 30 : 0),
          topRight: Radius.circular(activeIndex + 1 == actualIndex ? 30 : 0),
        ),
      ),
      child: ListTile(
        onTap: () => onSelect(actualIndex),
        contentPadding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Day $index',
            style: TextStyle(
              color: titleColor,
              fontSize: 18,
            ),
          ),
        ),
        subtitle: Text(
          'Day $index'.toUpperCase(),
          style: TextStyle(
            color: subtitleColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
