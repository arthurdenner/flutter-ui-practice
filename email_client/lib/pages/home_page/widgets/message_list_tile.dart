import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/message.dart';
import 'message_details.dart';

class MessageListTile extends StatelessWidget {
  const MessageListTile({
    Key key,
    @required this.message,
    this.onTap,
  }) : super(key: key);

  final Message message;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MessageDetails(
              message: message,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 95),
              child: Text(
                message.message.replaceAll(RegExp('\n\n'), ' '),
                maxLines: 1,
                style: AppTextStyles.timestamp,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
