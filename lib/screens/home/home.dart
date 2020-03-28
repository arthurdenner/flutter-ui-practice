import 'package:flutter/material.dart';
import 'package:flutterando_perfume_ecommerce_challenge/screens/home/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Topbar(),
          ],
        ),
      ),
    );
  }
}
