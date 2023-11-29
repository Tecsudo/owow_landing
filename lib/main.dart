import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:owow/core/constant/ui_constant.dart';

import 'core/config/theme/theme.dart';
import 'src/view/home/home_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    UIConfig.screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'O WOW!',
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const HomeMain(),
    );
  }
}
