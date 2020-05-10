import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/message.dart';
import '../../../widgets/dot.dart';

class MessageDetails extends StatelessWidget {
  const MessageDetails({
    Key key,
    @required this.message,
    this.noDot = false,
    this.imageSize = 50,
    this.subtitle,
  }) : super(key: key);

  final Message message;
  final bool noDot;
  final double imageSize;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if (!noDot) ...[
          Dot(color: message.color),
          SizedBox(width: 15),
        ],
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: imageSize,
            height: imageSize,
            decoration: BoxDecoration(
              color: AppColors.lightBlue,
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Row(
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
                      subtitle ?? message.subject,
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
        ),
      ],
    );
  }
}
