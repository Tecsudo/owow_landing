import 'package:flutter/material.dart';
import 'package:owow/core/constant/size_constant.dart';
import 'package:owow/core/extensions/build_context_extension.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';
import 'package:owow/src/view/common/background.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constant/ui_constant.dart';
import '../page/case_study_details_page.dart';

class CaseStudyLayout extends StatelessWidget {
  const CaseStudyLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1920,
      height: context.isDisplayLargeThanTablet ? 800 : 1000,
      child: Stack(
        children: [
          _topBG(context),
          Align(
            alignment: Alignment.topCenter,
            child: HomeBackground(
              child: ResponsiveRowColumn(
                columnMainAxisAlignment: MainAxisAlignment.start,
                columnSpacing: 32,
                rowMainAxisAlignment: MainAxisAlignment.start,
                layout: context.isDisplayLargeThanTablet
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 4,
                    columnOrder: 1,
                    child: _leftLayout(context),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 6,
                    columnOrder: 2,
                    child: _rightLayout(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _topBG(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: context.isDisplayLargeThanTablet ? 1920 : 900,
        height: context.isDisplayLargeThanTablet ? 800 : 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${Config.imagePath}/mid_b_two.png'),
            fit: context.isDisplayLargeThanTablet ? BoxFit.fill : BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _leftLayout(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: SizeConstant.p56,
          left: SizeConstant.p56,
        ),
        child: Align(
          alignment: context.isDisplayLargeThanTablet
              ? Alignment.topRight
              : Alignment.center,
          child: Text(
            'Case Studies',
            style: context.displayLarge!.copyWith(
              fontWeight: FontWeight.w700,
              // fontSize: 32,
              color: const Color(0xFFFF8E49),
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }

  Widget _rightLayout(BuildContext context) {
    return const SizedBox(
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 700,
            child: Column(
              children: [
                EndContentShapes(
                  gradientColors: [Color(0xFF4074BA), Color(0xFF5EA3D9)],
                  text:
                      'The O Wow Effect: A Case Study on Boosting Revenue and Loyalty through Intent-Based Promotions.',
                ),
                EndContentShapes(
                  gradientColors: [Color(0xFFED7B23), Color(0xFFF4AE2C)],
                  text: 'Navigating Customer’s Loyalty in Fashion and Style.',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 830,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                EndContentShapes(
                  gradientColors: [Color(0xFFD33D54), Color(0xFFDB6777)],
                  text:
                      'Revive & Thrive: O WOW\'s Solution to Restaurant Slow Times/O WOW\'s Blueprint for Conquering Restaurant Downtime.',
                ),
                EndContentShapes(
                  gradientColors: [Color(0xFF0AB89D), Color(0xFF3DC0B5)],
                  text:
                      'O WOW\'s Vision for Consistent Wellness Revenue/O WOW\'s Path to Boosted Revenue and Client Bonds.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EndContentShapes extends StatelessWidget {
  const EndContentShapes(
      {super.key, required this.gradientColors, required this.text});
  final String text;

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsCaseStudy(
                    title: text,
                  )),
        );
      },
      child: Container(
          margin: const EdgeInsets.all(SizeConstant.p8),
          width: 220,
          height: 260,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.71, 0.70),
              end: const Alignment(-0.71, -0.7),
              colors: gradientColors,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeConstant.p40),
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
            margin: const EdgeInsets.all(SizeConstant.p20),
            padding: const EdgeInsets.symmetric(horizontal: SizeConstant.p24),
            width: 220,
            height: 260,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: context.displayLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          )),
    );
  }
}
