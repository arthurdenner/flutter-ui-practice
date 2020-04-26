import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/home_page/widgets/hero.dart';
import 'package:portfolio/src/pages/home_page/widgets/projects_view.dart';
import 'package:portfolio/src/utils/constants.dart';

class PortfolioBody extends StatefulWidget {
  const PortfolioBody({Key key}) : super(key: key);

  @override
  _PortfolioBodyState createState() => _PortfolioBodyState();
}

class _PortfolioBodyState extends State<PortfolioBody> {
  bool _showProjects = false;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _heroTop = _showProjects ? -(_height * .8) : 0.0;
    final _projectsTop = _showProjects ? 0.0 : _height * .52;

    return Expanded(
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            top: _projectsTop,
            left: 0,
            right: 0,
            duration: AppDurations.long,
            curve: Curves.easeInOut,
            child: PortfolioProjectsView(
              isVisible: _showProjects,
              onPressed: _toggleProjects,
            ),
          ),
          AnimatedPositioned(
            top: _heroTop,
            left: 0,
            right: 0,
            duration: AppDurations.long,
            curve: Curves.easeInOut,
            child: PortfolioHero(
              onPressed: _toggleProjects,
            ),
          ),
        ],
      ),
    );
  }

  void _toggleProjects() {
    setState(() {
      _showProjects = !_showProjects;
    });
  }
}
