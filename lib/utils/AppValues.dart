import 'package:flutter/cupertino.dart';

abstract class AppValues {
  static screenHeight(context) => MediaQuery.of(context).size.height;
  static screenWidth(context) => MediaQuery.of(context).size.width;
  static screenTopPadding(context) => MediaQuery.of(context).padding.top;
}
