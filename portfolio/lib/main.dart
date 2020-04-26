import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/home_page/home_page.dart';
import 'package:provider/provider.dart';

import 'theme_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeController>(
      create: (_) => ThemeController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _useDarkMode = Provider.of<ThemeController>(context).isDarkTheme;

    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: _useDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(),
    );
  }
}
