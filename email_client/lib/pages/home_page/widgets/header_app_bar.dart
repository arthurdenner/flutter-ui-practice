import 'package:email_client/pages/home_page/widgets/services_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../../constants.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Inbox',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Feather.search,
              color: AppColors.lightBlue,
              size: 35,
            ),
          ],
        ),
        SizedBox(height: 20),
        ServicesAppBar()
      ],
    );
  }
}
