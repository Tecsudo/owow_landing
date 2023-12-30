import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:owow/core/constant/size_constant.dart';
import 'package:owow/core/extensions/build_context_extension.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';
import 'package:owow/src/view/common/background.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../common/footer.dart';

class Career extends StatelessWidget {
  const Career({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1920,
      height: 800,
      child: Stack(
        children: [
          _footerBG(context),
          Align(
            alignment: Alignment.topRight,
            child: HomeBackground(
              child: Container(
                  height: 250,
                  width: 500,
                  margin: const EdgeInsets.symmetric(
                      horizontal: SizeConstant.p20, vertical: SizeConstant.p40),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Still here? Let\'s get to know you!',
                          style: context.displayMedium!.copyWith(
                            color: const Color(0xFFFF8E49),
                            fontSize: 28,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          // margin: EdgeInsets.only(left: screenSize.width * .05),
                          width: 500,
                          child: DefaultTextStyle(
                            maxLines: 1,
                            textAlign: TextAlign.right,
                            style: context.displayMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
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
                          Text(
                            'Send your resume ----',
                            style: context.displayMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
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
                            child: Text(
                              'Now!',
                              style: context.displayMedium!.copyWith(
                                color: Color(0xFFFF8E49),
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          ),
          Footer(screenSize: screenSize),
        ],
      ),
    );
  }

  Widget _footerBG(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: context.isDisplayLargeThanTablet ? 1920 : 900,
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${Config.imagePath}/end.png'),
            fit: context.isDisplayLargeThanTablet
                ? BoxFit.fill
                : BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}


/* 


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

 */