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
      height: screenSize.height * 1.2,
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
                          text: 'WOW your Brand Experience',
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
                              'Step into a realm where success stories come to life, where brands transcend their limits and achieve unprecedented heights. Our cutting-edge SaaS solution is more than just a feedback tool; it\'s the catalyst for your brand\'s triumph. Imagine a journey where your success story is crafted with precision, fueled by a Deep Understanding of your Customer\'s Behavior. Through our innovative feedback platform, you\'re not merely collecting data; you\'re unlocking the secrets to customer satisfaction, paving the way for more profits and sustained growth. Witness the magic of low marketing costs as your brand experience becomes a beacon, drawing in customers organically. We believe that every business has a unique narrative waiting to unfold, and with our solution, you\'ll not only tell your story but shape it into a resounding success. It\'s more than feedback; it\'s the key to your brand\'s evolution, ensuring that your business not only thrives but becomes an unstoppable force in your industry. Welcome to a future where success is not just a destination but a journey fueled by insight, innovation, and unparalleled brand experience.',
                          style: TextStyle(
                            color: Color(0xFFFF8E49),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
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
                iconPath: '${Config.imagePath}/restaurant.png',
                text: 'Restaurants / Cafe',
              ),
              MidShadowBox(
                screenSize: screenSize,
                iconPath: '${Config.imagePath}/woman.png',
                text: 'Fashion',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MidShadowBox(
                screenSize: screenSize,
                iconPath: '${Config.imagePath}/supermarkets.png',
                text: 'Retail',
              ),
              MidShadowBox(
                screenSize: screenSize,
                iconPath: '${Config.imagePath}/residential.png',
                text: 'Real Estate',
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
