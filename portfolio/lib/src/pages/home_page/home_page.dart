import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/home_page/widgets/header.dart';
import 'package:portfolio/src/pages/home_page/widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              PortfolioHeader(),
              PortfolioBody(),
            ],
          ),
        ),
      ),
    );
  }
}
