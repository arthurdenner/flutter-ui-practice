import 'package:flutter/foundation.dart';

class Message {
  const Message({
    @required this.userName,
    @required this.userPhoto,
    @required this.subject,
    @required this.message,
    @required this.timestamp,
  });

  final String userName;
  final String userPhoto;
  final String subject;
  final String message;
  final String timestamp;
}
