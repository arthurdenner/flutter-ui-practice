import 'package:flutter/material.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width * .8,
      height: _height * .08,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'John Decon',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
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
