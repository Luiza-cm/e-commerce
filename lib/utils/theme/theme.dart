import 'package:flutter/material.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_learnings/utils/theme/custom_themes/text_theme.dart';

class MyAppTheme {
  MyAppTheme._(); // define private constructor

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: MyTextTheme.lightTextTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MyButtonSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButton.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    textTheme: MyTextTheme.dartTextTheme,
    elevatedButtonTheme: MyElevatedButton.darkElevatedButtonTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MyButtonSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
  );
}