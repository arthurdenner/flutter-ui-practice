import 'package:flutter/material.dart';
import 'package:smart_home_app/pages/home_page/widgets/app_header.dart';
import 'package:smart_home_app/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AppHeader(),
          ],
        ),
      ),
    );
  }
}
