import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/home_page/widgets/hero.dart';
import 'package:portfolio/src/pages/home_page/widgets/projects_view.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PortfolioHero(),
        PortfolioProjectsView(),
      ],
    );
  }
}
