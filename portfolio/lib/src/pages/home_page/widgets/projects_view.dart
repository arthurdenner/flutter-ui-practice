import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/home_page/widgets/project_card.dart';
import 'package:portfolio/src/pages/home_page/widgets/selected_projects.dart';
import 'package:portfolio/src/utils/constants.dart';

class PortfolioProjectsView extends StatefulWidget {
  const PortfolioProjectsView({
    Key key,
    this.isVisible,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  final bool isVisible;

  @override
  _PortfolioProjectsViewState createState() => _PortfolioProjectsViewState();
}

class _PortfolioProjectsViewState extends State<PortfolioProjectsView> {
  final _scrollController = ScrollController();
  int _activeIndex;

  double get _gap => MediaQuery.of(context).size.width * .01;
  double get _projectsWidth =>
      MediaQuery.of(context).size.width - (projects.length * _gap);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _scrollController.jumpTo(_projectsWidth / projects.length);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: _restoreState,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: _height * .03),
        height: _height * .91,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: _width * .8,
                  child: AnimatedOpacity(
                    duration: AppDurations.long,
                    opacity: widget.isVisible ? 1 : 0,
                    child: SelectedProjects(),
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              children: _createProjects(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _createProjects() {
    List<Widget> children = [];

    projects.asMap().forEach((index, project) {
      children.add(
        ProjectCard(
          isFocused: _activeIndex == index,
          isShadowed: _activeIndex != null && _activeIndex != index,
          isVisible: widget.isVisible,
          project: project,
          width: _projectsWidth / 4,
          margin: _gap,
          onFocus: () {
            if (!widget.isVisible) {
              widget.onPressed();
            }

            setState(() {
              if (_activeIndex == index) {
                _activeIndex = null;
              } else {
                _activeIndex = index;
              }
            });
          },
        ),
      );
    });

    return children;
  }

  void _restoreState() {
    setState(() {
      _activeIndex = null;
    });

    widget.onPressed();
  }
}
