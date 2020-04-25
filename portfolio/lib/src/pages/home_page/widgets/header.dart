import 'package:flutter/material.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200],
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text('Arthur Denner'),
          ),
          Row(
            children: <Widget>[
              _buildMenuOption('Work'),
              _buildMenuOption('About'),
              _buildMenuOption('Products'),
              _buildMenuOption('Contact'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuOption(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(label),
    );
  }
}
