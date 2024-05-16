import 'package:flutter/material.dart';
import 'package:flutter_learnings/utils/constants/sizes.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: AppSizes.appBarHeight,
      left: AppSizes.defaultSpace,
      bottom: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace);
}