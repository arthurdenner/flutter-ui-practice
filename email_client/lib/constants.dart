import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'models/message.dart';

class AppColors {
  static const blue = Color(0xFF0a275a);
  static const darkBlue = Color(0xFF061839);
  static const lightBlue = Color(0xFF7491c7);
  static const mediumBlue = Color(0xFF92a5c9);
  static const white = Colors.white;
  static const red = Color(0xFFe66477);
  static const purple = Color(0xFF8264e6);
  static const black = Colors.black;
  static const yellow = Color(0xFFe6e664);
  static const teal = Color(0xFF64e6dc);
}

class AppTextStyles {
  static const userName = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static const subject = TextStyle(
    color: AppColors.mediumBlue,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const timestamp = TextStyle(
    color: AppColors.lightBlue,
    fontSize: 15,
  );
}

final messages = <Message>[
  Message(
    userName: 'Kendra Blau',
    userPhoto: '',
    subject: 'Re: Design feedback',
    message: faker.lorem.sentences(5).join('\n\n'),
    timestamp: 'Just now',
    color: AppColors.red,
    attachments: ['feedback.pdf', 'design.pdf'],
  ),
  Message(
    userName: 'Mark Amarillo',
    userPhoto: '',
    subject: 'Final steps',
    message: faker.lorem.sentences(5).join('\n\n'),
    timestamp: '19 min ago',
    color: AppColors.purple,
  ),
  Message(
    userName: 'Valentine Red',
    userPhoto: '',
    subject: 'Re: Business opportunity',
    message: faker.lorem.sentences(7).join('\n\n'),
    timestamp: '2:11 pm',
    attachments: ['sow_2020.pdf'],
  ),
  Message(
    userName: 'Poinsettia Roja',
    userPhoto: '',
    subject: 'Contact approval',
    message: faker.lorem.sentences(5).join('\n\n'),
    timestamp: 'Just now',
    attachments: ['contract_signed.pdf'],
  ),
  Message(
    userName: 'Scarlett Jotz',
    userPhoto: '',
    subject: 'Re: Business opportunity',
    message: faker.lorem.sentences(5).join('\n\n'),
    timestamp: 'Just now',
  ),
];
