import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/message.dart';

class MessageListTile extends StatelessWidget {
  const MessageListTile({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: message.color,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            message.userName,
                            style: AppTextStyles.userName,
                          ),
                          SizedBox(height: 5),
                          Text(
                            message.subject,
                            style: AppTextStyles.subject,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        message.timestamp,
                        style: AppTextStyles.timestamp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  message.message,
                  style: AppTextStyles.timestamp,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// title: Text(
//             message.userName,
//             style: AppTextStyles.userName,
//           ),
// subtitle: Text(
//   message.subject,
//   style: AppTextStyles.subject,
// ),
//           trailing: Text(
//             message.timestamp,
//             style: AppTextStyles.timestamp,
//           ),
