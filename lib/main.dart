import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'config/theme/theme.dart';
import 'core/constant/ui_constant.dart';
import 'src/view/home/page/home_page.dart';

void main() {
  const bool kReleaseMode = bool.fromEnvironment('dart.vm.product');
  log('kReleaseMode: $kReleaseMode');
  Config.releaseMode = kReleaseMode;
  if (kReleaseMode) {
    Config.imagePath = 'assets/images';
  } else {
    Config.imagePath = 'assets/images';
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Config.screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'O wOW!',
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 360, name: 'SMALL_MOBILE'),
          const Breakpoint(start: 361, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 930, name: 'LARGE_TABLET'),
          const Breakpoint(start: 931, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
