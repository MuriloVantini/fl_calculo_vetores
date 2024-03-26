import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyColors {
  static const Color gray1 = Color(0xFF181818);
  static const Color gray2 = Color(0xFF94A3B8);
  static const Color gray3 = Color(0xFFB5AFAF);
  static const Color gray4 = Color(0xFF2F2F2F);
  static const Color green1 = Color(0xFF02E65A);
  static const Color red1 = Color(0xFFFF3C3C);
  static const Color red2 = Color(0xFF6C0000);
  static const Color yellow = Color(0xFFFFA800);
  static const Color primary = Color(0xFF4000FF);
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static void navigationDown(Color bgColor, Brightness text) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: bgColor,
        statusBarIconBrightness: text,
        systemStatusBarContrastEnforced: true));
  }
}