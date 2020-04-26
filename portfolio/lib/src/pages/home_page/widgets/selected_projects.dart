import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/home_page/widgets/dark_mode_toggle.dart';

class SelectedProjects extends StatelessWidget {
  const SelectedProjects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Selected Projects',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Hover over the cards to learn more about projects',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 10),
        DarkModeToggle(),
      ],
    );
  }
}
