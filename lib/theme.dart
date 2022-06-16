import 'package:flutter/material.dart';

ThemeData AppTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
    ).copyWith(
      onPrimary: Colors.white,
    ),
  );
}
