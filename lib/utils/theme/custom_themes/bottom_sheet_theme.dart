import 'package:flutter/material.dart';

class MyButtonSheetTheme{
  MyButtonSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minHeight: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      constraints: const BoxConstraints(minHeight: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}