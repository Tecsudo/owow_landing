import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:owow/core/constant/size_constant.dart';
import 'package:owow/core/extensions/build_context_extension.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';
import 'package:owow/src/view/common/background.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../../../core/util/launch_url.dart';
import '../../common/career_footer.dart';

class CareerLayout extends StatelessWidget {
  const CareerLayout({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1920,
      height: 600,
      child: Stack(
        children: [
          _footerBG(context),
          Footer(screenSize: screenSize),
          Align(
            alignment: Alignment.topCenter,
            child: HomeBackground(
              child: Container(
                  height: 300,
                  margin: const EdgeInsets.symmetric(
                      horizontal: SizeConstant.p20, vertical: SizeConstant.p20),
                  padding: EdgeInsets.only(
                      left: context.isDisplayLargeThanTablet ? 500 : 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Still here? Let\'s get to know you!',
                        textScaler: TextScaler.linear(context.titleScaleFactor),
                        style: context.displayMedium!.copyWith(
                          color: const Color(0xFFFF8E49),
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minHeight: 100,
                          minWidth: 200,
                          maxWidth: 600,
                          maxHeight: 150,
                        ),
                        child: DefaultTextStyle(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: context.displayMedium!.copyWith(
                            color: Colors.black,
                            fontSize: 20,
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
                      ResponsiveRowColumn(
                        columnMainAxisAlignment: MainAxisAlignment.center,
                        columnSpacing: 32,
                        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        layout: context.isDisplayLargeThanTablet
                            ? ResponsiveRowColumnType.ROW
                            : ResponsiveRowColumnType.COLUMN,
                        children: [
                          ResponsiveRowColumnItem(
                              rowFlex: 4,
                              columnOrder: 1,
                              child: Wrap(
                                children: [
                                  Text(
                                    'Send your resume ----',
                                    textScaler: TextScaler.linear(
                                        context.titleScaleFactor),
                                    style: context.displayMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )),
                          ResponsiveRowColumnItem(
                            rowFlex: 1,
                            columnOrder: 2,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xFFFF8E49),
                                // backgroundColor: const Color(0xFFFF8E49),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(SizeConstant.p4),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Now!',
                                  style: context.displayMedium!.copyWith(
                                    color: const Color(0xFFFF8E49),
                                    fontSize: 24,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              onPressed: () =>
                                  _launchUrl('mailto:info@tecsudo.com'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  void _launchUrl(String url) {
    LaunchUtil.launchWeb(url);
  }

  Widget _footerBG(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: context.isDisplayLargeThanTablet ? 1920 : 900,
        height: 600,
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