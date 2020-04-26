import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme_controller.dart';

class DarkModeToggle extends StatelessWidget {
  const DarkModeToggle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ThemeController>(context);

    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: _provider.toggleDarkTheme,
          child: Container(
            decoration: BoxDecoration(
              color: _provider.isDarkTheme ? Colors.grey[800] : Colors.black,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(6),
            child: Icon(
              _provider.isDarkTheme ? Icons.wb_sunny : Icons.brightness_2,
              color: Color(0xFFf23a6a),
              size: 16,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          _provider.isDarkTheme ? 'Enable light mode' : 'Enable dark mode',
          style: TextStyle(
            color: Color(0xFFf23a6a),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
