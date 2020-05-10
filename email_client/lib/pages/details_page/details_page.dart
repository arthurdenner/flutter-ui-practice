import 'package:email_client/pages/details_page/widgets/input.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/message.dart';
import '../../pages/home_page/widgets/message_details.dart';
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
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
                    Expanded(
                      child: Container(color: AppColors.teal),
                    ),
                    DetailsInput(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
