import 'package:flutter/material.dart';
import 'package:owow/core/extensions/build_context_extension.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/constant/gap_constant.dart';
import '../../../core/constant/ui_constant.dart';
import '../common/background.dart';

class DetailsCaseStudy extends StatelessWidget {
  const DetailsCaseStudy({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1920,
      height: 800,
      child: Stack(
        children: [
          _topBG(context),
          Align(
            alignment: Alignment.topCenter,
            child: HomeBackground(
                child: Column(
              children: [
                GapConstant.h80,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 500,
                    child: Text(
                      'Case Heading ',
                      style: context.displayMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                GapConstant.h80,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: context.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      // fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }

  Widget _topBG(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: context.isDisplayLargeThanTablet ? 1920 : 900,
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${Config.imagePath}/top.png'),
            fit: context.isDisplayLargeThanTablet
                ? BoxFit.fill
                : BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
