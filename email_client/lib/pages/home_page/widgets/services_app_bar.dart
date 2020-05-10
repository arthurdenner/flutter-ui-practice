import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widgets/dot.dart';

const double ICON_SIZE = 25;

class ServicesAppBar extends StatelessWidget {
  const ServicesAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              _buildImage(
                path: 'assets/images/gmail.png',
              ),
              // SizedBox(width: 20),
              _buildImage(
                path: 'assets/images/outlook.png',
                count: 4,
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Dot(color: AppColors.red),
                SizedBox(width: 5),
                Dot(color: AppColors.purple),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Dot(color: AppColors.yellow),
                SizedBox(width: 5),
                Dot(color: AppColors.teal),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildImage({String path, int count}) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12),
          child: Image.asset(
            path,
            width: ICON_SIZE,
          ),
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
        ),
        if (count != null && count > 0)
          Positioned(
            top: -3,
            right: 12,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                count.toString(),
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
