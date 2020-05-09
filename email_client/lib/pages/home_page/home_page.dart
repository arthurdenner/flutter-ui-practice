import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../constants.dart';
import 'widgets/message_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MessageList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.white,
        child: Icon(
          Feather.edit,
          color: AppColors.black,
        ),
      ),
    );
  }
}
