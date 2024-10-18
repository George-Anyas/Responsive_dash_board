import 'package:flutter/material.dart';

class SizeConfig {
  static const double deskTop = 1200;

  static const double tablet = 1200;
  static late double hieght, width;
  static init(BuildContext context) {
    hieght = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
