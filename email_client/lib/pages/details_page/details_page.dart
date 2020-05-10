import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/message.dart';
import '../../pages/home_page/widgets/message_details.dart';
import 'widgets/attachments.dart';
import 'widgets/input.dart';
import 'widgets/options.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height * 0.9;

    return Container(
      height: _height,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            DetailsOptions(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text(
                        message.subject,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(height: 30),
                      MessageDetails(
                        imageSize: 65,
                        message: message,
                        subtitle: 'To You',
                        noDot: true,
                      ),
                      SizedBox(height: 50),
                      Column(
                        children: <Widget>[
                          Text(
                            message.message,
                            style: TextStyle(
                              color: AppColors.mediumBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 20),
                          Attachments(
                            attachments: message.attachments,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      DetailsInput(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
