import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../../../core/widget/word_logo.dart';
import '../../common/header.dart';

class SectionOne extends StatefulWidget {
  const SectionOne({super.key});

  @override
  State<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne> {
  Size screenSize = Config.screenSize;

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
          const Align(alignment: Alignment.bottomCenter, child: Header()),
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
                              'We are: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 370.0,
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
                                      'Innovators',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
                                    ),
                                    TypewriterAnimatedText(
                                      'Dreamers',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
                                    ),
                                    TypewriterAnimatedText(
                                      'Creators',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
                                    ),
                                    TypewriterAnimatedText(
                                      'Story Tellers',
                                      speed: const Duration(milliseconds: 250),
                                      curve: Easing.legacy,
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
                    //..........................................................
                    /* const SizedBox(
                      width: 534,
                      height: 230.16,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Lorem Ipsum is simply \n',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -0.61,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' \ntext of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -0.61,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), */

                    /* SizedBox(
                      width: 316,
                      height: 50,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 316,
                              height: 50,
                              decoration: ShapeDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(1.00, 0.00),
                                  end: Alignment(-1, 0),
                                  colors: [Colors.white, Colors.white],
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 120.18,
                            top: 14,
                            child: SizedBox(
                              width: 76.67,
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  color: Color(0xFFFF9148),
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ) */
                    //..........................................................
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
