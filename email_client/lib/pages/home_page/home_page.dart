import 'package:flutter/material.dart';

import 'widgets/message_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MessageList(),
    );
  }
}
