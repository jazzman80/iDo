import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
    ).copyWith(
      onPrimary: Colors.white,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      modalBackgroundColor: Color.fromARGB(0, 0, 0, 0),
    ),
  );
}
