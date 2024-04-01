import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1400;
  static const double taplet = 800;

  static late double width, height;
  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
