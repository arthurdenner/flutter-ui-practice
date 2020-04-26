import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/src/models/project.dart';
import 'package:portfolio/src/utils/constants.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key key,
    this.isFocused,
    this.isShadowed,
    this.isVisible,
    this.margin,
    this.onFocus,
    this.project,
    this.width,
  }) : super(key: key);

  final bool isFocused;
  final bool isShadowed;
  final bool isVisible;
  final Project project;
  final double margin;
  final double width;
  final VoidCallback onFocus;

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _subtitleTop = widget.isFocused ? _height * .65 : _height * .68;
    final _subtitleLeft = widget.isFocused ? 0.0 : 8.0;
    final _subtitleOpacity = widget.isFocused ? 1.0 : 0.0;

    return GestureDetector(
      onTap: widget.onFocus,
      child: AnimatedContainer(
        duration: AppDurations.short,
        width: widget.width,
        margin: EdgeInsets.symmetric(horizontal: widget.margin),
        child: ScaleAnimatedWidget.tween(
          enabled: widget.isShadowed,
          duration: AppDurations.short,
          scaleDisabled: 1.0,
          scaleEnabled: 0.9,
          child: ScaleAnimatedWidget.tween(
            enabled: widget.isFocused,
            scaleDisabled: 1.0,
            scaleEnabled: 1.1,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AnimatedOpacity(
                      duration: AppDurations.short,
                      opacity: widget.isShadowed ? 0.5 : 1,
                      child: AnimatedContainer(
                        height: _height * .45,
                        width: widget.width,
                        duration: AppDurations.short,
                        child: Image.asset(
                          widget.project.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  top: _subtitleTop,
                  left: _subtitleLeft,
                  right: 0,
                  duration: AppDurations.short,
                  child: AnimatedOpacity(
                    duration: AppDurations.short,
                    opacity: _subtitleOpacity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text(
                          widget.project.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text.rich(
                          TextSpan(
                            text: widget.project.location,
                            children: [
                              TextSpan(text: ' - '),
                              TextSpan(
                                  text: '${widget.project.numPhotos} photos'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
