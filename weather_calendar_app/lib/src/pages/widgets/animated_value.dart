import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';

class AnimatedValue extends StatefulWidget {
  const AnimatedValue({
    Key key,
    @required this.value,
  }) : super(key: key);

  final num value;

  @override
  _AnimatedValueState createState() => _AnimatedValueState();
}

class _AnimatedValueState extends State<AnimatedValue>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<num> _animation;
  num _prevValue;

  @override
  initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<num>(
      begin: 0.0,
      end: widget.value,
    ).animate(_controller);
    _controller.forward();
    _prevValue = widget.value;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void didUpdateWidget(AnimatedValue oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _animation = Tween<num>(
        begin: _prevValue,
        end: widget.value,
      ).animate(_controller);
      _prevValue = widget.value;
    });
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, __) {
        return Text(
          _animation.value.toInt().toString(),
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w300,
            fontSize: 100,
            height: 1,
          ),
        );
      },
    );
  }
}
