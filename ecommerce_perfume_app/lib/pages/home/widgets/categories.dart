import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/pages/home/widgets/dot.dart';

class ProductCategories extends StatelessWidget {
  const ProductCategories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
        margin: EdgeInsets.only(bottom: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _Category(
              text: 'Popular',
            ),
            _Category(
              active: true,
              text: 'Suggested',
            ),
          ],
        ),
      ),
    );
  }
}

class _Category extends StatelessWidget {
  const _Category({
    Key key,
    this.active: false,
    @required this.text,
  })  : assert(text != null),
        super(key: key);

  final bool active;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Text(
            text.toUpperCase(),
            style: TextStyle(
              color: active ? Color(0xFF59a463) : Colors.black26,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (active)
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: Dot(),
            ),
        ],
      ),
    );
  }
}
