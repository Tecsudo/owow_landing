import 'package:flutter/material.dart';

class MidPartThree extends StatelessWidget {
  const MidPartThree({
    super.key,
    required this.screenSize,
    required this.caseStudyKey,
  });

  final Size screenSize;
  final GlobalKey caseStudyKey;

  @override
  Widget build(BuildContext context) {
    return Align(
      key: caseStudyKey,
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(
          right: screenSize.width * .03,
          bottom: screenSize.height * 0.7,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenSize.height * .4,
              margin: EdgeInsets.only(
                left: screenSize.width * .1,
              ),
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Case Studies',
                  style: TextStyle(
                    color: Color(0xFFFF8E49),
                    fontSize: 56,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: screenSize.height * 1.3,
              child: Column(
                children: [
                  EndContentShapes(
                    screenSize: screenSize,
                    gradientColors: const [
                      Color(0xFF4074BA),
                      Color(0xFF5EA3D9)
                    ],
                    text:
                        'The O Wow Effect:\nA Case Study on Boosting Revenue and Loyalty through Intent-Based Promotions.',
                  ),
                  EndContentShapes(
                    screenSize: screenSize,
                    gradientColors: const [
                      Color(0xFFED7B23),
                      Color(0xFFF4AE2C)
                    ],
                    text: 'Navigating Customer’s Loyalty in Fashion and Style.',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 1.3,
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * .22,
                  ),
                  EndContentShapes(
                    screenSize: screenSize,
                    gradientColors: const [
                      Color(0xFFD33D54),
                      Color(0xFFDB6777)
                    ],
                    text:
                        'Revive & Thrive:\n O WOW\'s Solution to Restaurant Slow Times O WOW\'s Blueprint for Conquering Restaurant Downtime.',
                  ),
                  EndContentShapes(
                    screenSize: screenSize,
                    gradientColors: const [
                      Color(0xFF0AB89D),
                      Color(0xFF3DC0B5)
                    ],
                    text:
                        'O WOW\'s Vision for Consistent Wellness Revenue O WOW\'s Path to Boosted Revenue and Client Bonds.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EndContentShapes extends StatelessWidget {
  const EndContentShapes(
      {super.key,
      required this.screenSize,
      required this.gradientColors,
      required this.text});
  final Size screenSize;
  final String text;

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: screenSize.width * .21,
        height: screenSize.height * .5,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.71, 0.70),
            end: const Alignment(-0.71, -0.7),
            colors: gradientColors,
          ),
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
        child: Container(
          margin: const EdgeInsets.all(10),
          width: screenSize.width * .19,
          height: screenSize.height * .45,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ));
  }
}
