import 'package:flutter/material.dart';

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
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(6),
              child: Icon(
                Icons.brightness_2,
                color: Color(0xFFf23a6a),
                size: 16,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Enable dark mode',
              style: TextStyle(
                color: Color(0xFFf23a6a),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
