import 'package:flutter/material.dart';

import '../../../core/constant/ui_constant.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIConfig.screenSize.height * 0.2,
    );
  }
}
