import 'package:flutter/material.dart';

import 'components/section_one.dart';
import 'components/section_three.dart';
import 'components/section_two.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SectionOne(),
        SectionTwo(),
        SectionThree(),
      ],
    );
  }
}
