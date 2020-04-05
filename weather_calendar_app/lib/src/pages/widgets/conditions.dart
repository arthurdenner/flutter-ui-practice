import 'package:flutter/material.dart';

class Condition {
  const Condition({
    @required this.icon,
    @required this.label,
  });

  final IconData icon;
  final String label;
}

const items = [
  Condition(icon: Icons.cloud, label: '90% Precipitation'),
  Condition(icon: Icons.keyboard_arrow_right, label: '17 km/h Wind'),
  Condition(icon: Icons.place, label: '30% Humidity'),
];

class Conditions extends StatelessWidget {
  const Conditions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (_, index) {
        final item = items[index];

        return Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(
                  item.icon,
                  color: Colors.white,
                ),
              ),
              Text(
                item.label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
