import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../core/constant/ui_constant.dart';

class MidPartOne extends StatelessWidget {
  const MidPartOne({
    super.key,
    required this.screenSize,
    required this.aboutUsKey,
  });

  final Size screenSize;
  final GlobalKey aboutUsKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutUsKey,
      margin: EdgeInsets.symmetric(horizontal: screenSize.width * .01),
      width: screenSize.width,
      height: screenSize.height * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // height: 67,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'WE HAVE SOMETHING FOR EVERYONE',
                          style: TextStyle(
                            color: Color(0xFFFF8E49),
                            fontSize: 36,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '“Hi everyone! At O WOW, our mission is to always act in your best interests. We\'ve got you covered no matter whichever industry or field you belong to. Consider us as your personalized remedy, ready to bridge the gaps and provide you with precisely what you require. What is in our toolkit? To ease your life, we have some fantastic features lined up.”',
                          style: TextStyle(
                            color: Color(0xFFFF8E49),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          MidContentShapes(screenSize: screenSize),
        ],
      ),
    );
  }
}

class MidContentShapes extends StatelessWidget {
  const MidContentShapes({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * .5,
      height: screenSize.height * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MidShadowBox(
                screenSize: screenSize,
                iconPath: '${Config.imagePath}/mid_two.png',
                text: 'Revenue Growth',
              ),
              MidShadowBox(
                screenSize: screenSize,
                iconPath: '${Config.imagePath}/mid_three.png',
                text: 'Cost Cutting',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MidShadowBox(
                screenSize: screenSize,
                iconPath: '${Config.imagePath}/mid_one.png',
                text: 'Better Decision Making',
              ),
              MidShadowBox(
                screenSize: screenSize,
                iconPath: '${Config.imagePath}/mid_four.png',
                text: 'Customers Awareness',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MidShadowBox extends StatelessWidget {
  const MidShadowBox({
    super.key,
    required this.screenSize,
    required this.iconPath,
    required this.text,
  });

  final Size screenSize;
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    log(iconPath, name: 'MidShadowBox');
    return Container(
      width: screenSize.width * .2,
      height: screenSize.height * .4,
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * .02),
      decoration: ShapeDecoration(
        color: const Color(0xFFF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(51),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 41.50,
            offset: Offset(0, 0),
            spreadRadius: 6,
          )
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: screenSize.height * .12,
                width: screenSize.width * .12,
                child: Image.asset(
                  iconPath,
                  color: const Color(0xFFFF8E49),
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
