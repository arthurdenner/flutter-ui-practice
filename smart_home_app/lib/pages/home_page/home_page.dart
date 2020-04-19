import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Text('Home Page'),
          ),
        ),
      ),
    );
  }
}
