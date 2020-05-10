import 'dart:math';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class DetailsInput extends StatelessWidget {
  const DetailsInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Transform.rotate(
              angle: -pi / 5,
              child: Icon(
                Icons.attach_file,
                color: AppColors.white.withOpacity(0.7),
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Type your message',
              style: TextStyle(
                color: AppColors.lightBlue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightBlue,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.send,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
