import 'package:flutter/material.dart';

bool isSmBreakpoint(BuildContext context) {
  return MediaQuery.of(context).size.width > 480;
}
