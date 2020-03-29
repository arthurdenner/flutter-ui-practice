import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    Key key,
    this.color: Colors.green,
    this.size: 8,
  }) : super(key: key);

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size),
      ),
      width: size,
      height: size,
    );
  }
}
