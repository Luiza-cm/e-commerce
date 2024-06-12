import 'package:flutter/material.dart';
import 'package:flutter_learnings/utils/constants/colors.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: MyColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: MyColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}