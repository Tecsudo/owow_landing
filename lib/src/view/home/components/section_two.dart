import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import 'section_two_components/part_one.dart';
import 'section_two_components/part_three.dart';
import 'section_two_components/part_two.dart';

class SectionTwo extends StatefulWidget {
  const SectionTwo({super.key});

  @override
  State<SectionTwo> createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  Size screenSize = Config.screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 3.5,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: screenSize.width,
              height: screenSize.height * 2.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${Config.imagePath}/mid.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          MidPartOne(screenSize: screenSize),
          MidPartTwo(screenSize: screenSize),
          MidPartThree(screenSize: screenSize),
        ],
      ),
    );
  }
}
