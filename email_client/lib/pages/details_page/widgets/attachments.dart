import 'package:flutter/material.dart';

import '../../../constants.dart';

class Attachments extends StatelessWidget {
  const Attachments({
    Key key,
    @required this.attachments,
  }) : super(key: key);

  final List<String> attachments;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: attachments
          .map(
            (attachment) => Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 80,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('assets/images/pdf.png'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.close,
                            color: AppColors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    attachment,
                    style: TextStyle(
                      color: AppColors.mediumBlue,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
