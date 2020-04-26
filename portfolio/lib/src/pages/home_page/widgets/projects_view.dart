import 'package:flutter/material.dart';
import 'package:portfolio/src/utils/constants.dart';

class PortfolioProjectsView extends StatefulWidget {
  const PortfolioProjectsView({Key key}) : super(key: key);

  @override
  _PortfolioProjectsViewState createState() => _PortfolioProjectsViewState();
}

class _PortfolioProjectsViewState extends State<PortfolioProjectsView> {
  final _scrollController = ScrollController();

  double get _gap => MediaQuery.of(context).size.width * .02;
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

    return Container(
      height: _height * .9,
      child: ListView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        children: projects
            .map(
              (project) => Container(
                width: _projectsWidth / 4,
                margin: EdgeInsets.symmetric(horizontal: _gap),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        project.image,
                        height: _height * .5,
                        width: _projectsWidth / 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      project.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text.rich(
                      TextSpan(
                        text: project.location,
                        children: [
                          TextSpan(text: ' - '),
                          TextSpan(text: '${project.numPhotos} photos'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
