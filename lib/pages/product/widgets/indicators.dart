import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            width: 25,
            height: 8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Dot(
            color: Color(0xFFaddcb6),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Dot(
            color: Color(0xFFaddcb6),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Dot(
            color: Color(0xFFaddcb6),
          ),
        ),
      ],
    );
  }
}
