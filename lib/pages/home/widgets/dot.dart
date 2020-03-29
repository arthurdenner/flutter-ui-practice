import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    Key key,
    this.color: const Color(0xFF59a463),
    this.size: 6,
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
