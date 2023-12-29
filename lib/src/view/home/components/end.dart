import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../common/footer.dart';

class PageEnding extends StatelessWidget {
  const PageEnding(
      {super.key,
      required this.careerKey,
      required this.scrollController,
      required this.screenSize});

  final GlobalKey careerKey;
  final ScrollController scrollController;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: careerKey,
      width: screenSize.width,
      height: screenSize.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${Config.imagePath}/end.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
                height: screenSize.height * .3,
                width: screenSize.width * .65,
                margin: EdgeInsets.symmetric(
                  horizontal: screenSize.width * .03,
                  vertical: screenSize.height * .04,
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'Still here? Let\'s get to know you!',
                        style: TextStyle(
                          color: Color(0xFFFF8E49),
                          fontSize: 46,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: screenSize.width * .05),
                        width: screenSize.width * .63,
                        child: DefaultTextStyle(
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: true,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'At “O WoW!”, we\'re more than just a workplace.',
                                speed: const Duration(milliseconds: 150),
                                curve: Curves.ease,
                                // curve: Easing.legacy,
                              ),
                              TypewriterAnimatedText(
                                'Join us in creating meaningful connections and memorable experiences for people worldwide.',
                                speed: const Duration(milliseconds: 140),
                                curve: Curves.decelerate,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Send your resume ----',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            foregroundColor: const Color(0xFFFF8E49),
                            // backgroundColor: const Color(0xFFFF8E49),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            'Now!',
                            style: TextStyle(
                              color: Color(0xFFFF8E49),
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {
                            //TODO: Implement Forgot Password
                          },
                        )
                      ],
                    ),
                  ],
                )),
          ),
          Footer(screenSize: screenSize),
        ],
      ),
    );
  }
}
