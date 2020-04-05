// Extracted from https://medium.com/fantageek/how-to-debounce-action-in-flutter-ed7177843407

import 'package:flutter/foundation.dart';
import 'dart:async';

class Debouncer {
  Debouncer({this.milliseconds = 500});

  final int milliseconds;

  VoidCallback action;
  Timer _timer;

  run(VoidCallback action) {
    if (_timer != null) {
      _timer.cancel();
    }

    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
