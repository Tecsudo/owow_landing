import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../../../core/widget/word_logo.dart';
import '../../common/header.dart';

class PageStart extends StatelessWidget {
  const PageStart(
      {super.key,
      required this.aboutUsKey,
      required this.servicesKey,
      required this.caseStudyKey,
      required this.contactUsKey,
      required this.homeKey,
      required this.careerKey,
      required this.scrollController,
      required this.screenSize});

  final GlobalKey aboutUsKey;
  final GlobalKey servicesKey;
  final GlobalKey caseStudyKey;
  final GlobalKey contactUsKey;
  final GlobalKey homeKey;
  final GlobalKey careerKey;
  final ScrollController scrollController;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 1.2,
      child: Stack(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 1.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${Config.imagePath}/top.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Header(
                width: screenSize.width,
                aboutUsKey: aboutUsKey,
                servicesKey: servicesKey,
                contactUsKey: contactUsKey,
                caseStudyKey: caseStudyKey,
                homeKey: homeKey,
                careerKey: careerKey,
                scrollController: scrollController,
              )),
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WordLogo(
                      screenSize: screenSize,
                      logoColor: Colors.white,
                    ),
                    SizedBox(
                        width: 550,
                        // height: 230.16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'O WOW ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 500.0,
                              child: DefaultTextStyle(
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 42,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.3,
                                ),
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      'WOW YOUR WALLET',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Curves.ease,
                                    ),
                                    TypewriterAnimatedText(
                                      'Data-Driven Perspective',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Curves.ease,
                                    ),
                                    TypewriterAnimatedText(
                                      'We are in the END (Reach) game',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Curves.ease,
                                    ),
                                    TypewriterAnimatedText(
                                      'Turning your "Ows!" to "WOWs!"',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
                                    ),
                                    TypewriterAnimatedText(
                                      'We Make \'SOLD\' Happen!',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
                                    ),
                                    TypewriterAnimatedText(
                                      'Not all Heroes wear Capes, some do Sales!',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
                                    ),
                                    TypewriterAnimatedText(
                                      'Smoothen your Rush Hours',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
                                    ),
                                    TypewriterAnimatedText(
                                      'Wow Your Dead Hours',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Curves.ease,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            surfaceTintColor: Colors.white,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            shadowColor: Colors.black.withOpacity(.3),
                            elevation: 4,
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                          label: const Text(
                            'Continue',
                            style: TextStyle(
                              color: Color(0xFFFF9148),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )),
                    )
                  ],
                ),
                Container(
                  width: screenSize.width * .5,
                  height: screenSize.height * .8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${Config.imagePath}/top_one.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
