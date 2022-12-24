import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neotify/utils/AppColors.dart';

class PinkBlur extends StatelessWidget {
  const PinkBlur({
    super.key,
    this.top,
    this.right,
    this.bottom,
    this.left,
    this.widthBlur,
    this.heightBlur,
  });

  final double? top;
  final double? right;
  final double? bottom;
  final double? left;
  final double? widthBlur;
  final double? heightBlur;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      bottom: bottom,
      left: left,
      child: Container(
        height: heightBlur,
        width: widthBlur,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.pink,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 200,
            sigmaY: 200,
          ),
          child: Container(
            height: heightBlur,
            width: widthBlur,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
