import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import 'body_components/part_four.dart';
import 'body_components/part_one.dart';
import 'body_components/part_three.dart';
import 'body_components/part_two.dart';

class PageBody extends StatelessWidget {
  const PageBody(
      {super.key,
      required this.aboutUsKey,
      required this.servicesKey,
      required this.caseStudyKey,
      required this.scrollController,
      required this.screenSize,
      required this.contactUsKey});

  final GlobalKey aboutUsKey;
  final GlobalKey servicesKey;
  final GlobalKey caseStudyKey;
  final GlobalKey contactUsKey;
  final ScrollController scrollController;
  final Size screenSize;

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
          MidPartOne(
            screenSize: screenSize,
            aboutUsKey: aboutUsKey,
          ),
          MidPartTwo(
            screenSize: screenSize,
            servicesKey: servicesKey,
          ),
          MidPartThree(
            screenSize: screenSize,
            caseStudyKey: caseStudyKey,
          ),
          MidPartFour(
            screenSize: screenSize,
            contactUsKey: contactUsKey,
          ),
        ],
      ),
    );
  }
}
