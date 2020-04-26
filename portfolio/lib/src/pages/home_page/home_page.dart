import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/home_page/widgets/header.dart';
import 'package:portfolio/src/pages/home_page/widgets/body.dart';
import 'package:portfolio/src/pages/home_page/widgets/selected_projects.dart';
import 'package:portfolio/src/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            PortfolioHeader(),
            Divider(height: 0),
            PortfolioBody(),
            // AnimatedPositioned(
            //   duration: AppDurations.short,
            //   top: _height * .7,
            //   child: AnimatedOpacity(
            //     child: SelectedProjects(),
            //     opacity: 1,
            //     duration: AppDurations.short,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
