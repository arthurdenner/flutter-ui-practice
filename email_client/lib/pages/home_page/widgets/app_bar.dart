import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'header_app_bar.dart';

class InboxAppBar extends StatelessWidget {
  const InboxAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        child: HeaderAppBar(),
      ),
    );
  }
}
