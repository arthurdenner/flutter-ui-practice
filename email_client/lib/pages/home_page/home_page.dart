import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../constants.dart';
import '../../models/message.dart';
import '../details_page/details_page.dart';
import 'widgets/app_bar.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/message_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          InboxAppBar(),
          MessageList(
            onSelectMessage: (message) =>
                _handleSelectMessage(context, message),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
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

  void _handleSelectMessage(BuildContext context, Message message) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: AppColors.darkBlue,
      isScrollControlled: true,
      builder: (_) => DetailsPage(
        message: message,
      ),
    );
  }
}
