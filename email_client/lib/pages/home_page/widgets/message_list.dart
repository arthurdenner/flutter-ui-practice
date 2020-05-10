import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/message.dart';
import 'message_list_tile.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key key,
    this.onSelectMessage,
  }) : super(key: key);

  final void Function(Message message) onSelectMessage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: messages.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return MessageListTile(
            message: messages[index],
            onTap: () => onSelectMessage(messages[index]),
          );
        },
      ),
    );
  }
}
