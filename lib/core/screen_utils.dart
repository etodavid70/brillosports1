//screen_utils.dart
import 'package:flutter/material.dart';

class ScreenUtils {
 late double screenHeight;
  late double screenWidth;
  late double defaultWidth;

  ScreenUtils(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    defaultWidth= screenWidth*0.05;

  }
}
