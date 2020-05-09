import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'models/message.dart';

class AppColors {
  static const blue = Color(0xFF0a275a);
  static const darkBlue = Color(0xFF061839);
  static const lightBlue = Color(0xFF7491c7);
  static const white = Color(0xFFFFFFFF);
}

final messages = <Message>[
  Message(
    userName: 'Kendra Blau',
    userPhoto: '',
    subject: 'Re: Design feedback',
    message: faker.lorem.sentence(),
    timestamp: 'Just now',
  ),
  Message(
    userName: 'Mark Amarillo',
    userPhoto: '',
    subject: 'Final steps',
    message: faker.lorem.sentence(),
    timestamp: '19 min ago',
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
