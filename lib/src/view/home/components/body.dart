import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import 'body_components/part_four.dart';
import 'body_components/part_one.dart';
import 'body_components/part_three.dart';
import 'body_components/part_two.dart';

class PageBody extends StatefulWidget {
  const PageBody({super.key});

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  Size screenSize = Config.screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 4,
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
          MidPartFour(screenSize: screenSize),
        ],
      ),
    );
  }
}
