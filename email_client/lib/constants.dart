import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'models/message.dart';

class AppColors {
  static const blue = Color(0xFF0a275a);
  static const darkBlue = Color(0xFF061839);
  static const lightBlue = Color(0xFF7491c7);
  static const white = Color(0xFFFFFFFF);
  static const red = Color(0xFFe66477);
  static const purple = Color(0xFF8264e6);
}

class AppTextStyles {
  static const userName = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static const subject = TextStyle(
    color: AppColors.lightBlue,
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
    message: faker.lorem.sentence(),
    timestamp: 'Just now',
    color: AppColors.red,
  ),
  Message(
    userName: 'Mark Amarillo',
    userPhoto: '',
    subject: 'Final steps',
    message: faker.lorem.sentence(),
    timestamp: '19 min ago',
    color: AppColors.purple,
  ),
  Message(
    userName: 'Valentine Red',
    userPhoto: '',
    subject: 'Re: Business opportunity',
    message: faker.lorem.sentence(),
    timestamp: '2:11 pm',
  ),
  Message(
    userName: 'Poinsettia Roja',
    userPhoto: '',
    subject: 'Contact approval',
    message: faker.lorem.sentence(),
    timestamp: 'Just now',
  ),
  Message(
    userName: 'Scarlett Jotz',
    userPhoto: '',
    subject: 'Re: Business opportunity',
    message: faker.lorem.sentence(),
    timestamp: 'Just now',
  ),
];
