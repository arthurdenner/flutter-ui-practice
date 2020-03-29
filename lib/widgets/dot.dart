import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    Key key,
    this.size: 8,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(size),
      ),
      width: size,
      height: size,
    );
  }
}
