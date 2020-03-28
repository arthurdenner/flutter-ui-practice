import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  const Filters({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).size.width / 12;

    return Container(
      height: 50,
      padding: EdgeInsets.only(left: padding),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          FilterIcon(),
          FilterLabel(text: 'Floral'),
          FilterLabel(text: 'Warm & Spicy'),
        ],
      ),
    );
  }
}

class FilterIcon extends StatelessWidget {
  const FilterIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(8),
      child: Icon(
        Icons.filter_list,
        size: 32,
        color: Colors.white,
      ),
    );
  }
}

class FilterLabel extends StatelessWidget {
  const FilterLabel({
    Key key,
    @required this.text,
  })  : assert(text != null),
        super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 16,
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.green,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
