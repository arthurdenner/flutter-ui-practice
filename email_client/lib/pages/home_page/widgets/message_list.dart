import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'message_list_tile.dart';

class MessageList extends StatelessWidget {
  const MessageList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        return MessageListTile(
          message: messages[index],
        );
      },
    );
  }
}
