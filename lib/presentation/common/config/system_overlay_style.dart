import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUiOverlayStyleApp {
  static setSystemUIOverlayStyle(
      Color? statusBarColor,
      Brightness? statusBarIconBrightness,
      Brightness? systemNavigationBarIconBrightness) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        //systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: statusBarIconBrightness,
        systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
      ),
    );
  }
}
