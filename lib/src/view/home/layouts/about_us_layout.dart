import 'package:flutter/material.dart';
import 'package:owow/core/constant/gap_constant.dart';
import 'package:owow/core/extensions/build_context_extension.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';

import 'package:responsive_framework/responsive_row_column.dart';

import '../../../../../core/constant/size_constant.dart';
import '../../../../../core/constant/ui_constant.dart';
import '../../common/background.dart';

class AboutUsLayout extends StatelessWidget {
  const AboutUsLayout({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: SizedBox(
        width: screenSize.width,
        height: context.isDisplayLargeThanTablet ? 900 : 1300,
        child: ResponsiveRowColumn(
          columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
          columnSpacing: 32,
          rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
          layout: context.isDisplayLargeThanTablet
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 4,
              columnOrder: 2,
              child: _leftLayout(context),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 4,
              columnOrder: 1,
              child: _rightLayout(context, screenSize),
            ),
          ],
        ),
      ),
    );
  }

  Widget _leftLayout(BuildContext context) {
    return Container(
      margin: context.isDisplayLargeThanTablet
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: SizeConstant.p12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'WOW your Brand Experience',
                    style: context.displayMedium!.copyWith(
                      color: const Color(0xFFFF8E49),
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              textScaler: TextScaler.linear(context.titleScaleFactor),
            ),
          ),
          GapConstant.h20,
          SizedBox(
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text:
                        'Step into a realm where success stories come to life, where brands transcend their limits and achieve unprecedented heights. Our ',
                  ),
                  TextSpan(
                    text: 'cutting-edge SaaS solution ',
                    style: context.displayMedium!.copyWith(
                      color: const Color(0xFFFF8E49),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text:
                        'is more than just a feedback tool; it\'s the catalyst for your brand\'s triumph. Imagine a journey where your ',
                  ),
                  TextSpan(
                    text: 'success story is crafted with precision, ',
                    style: context.displayMedium!.copyWith(
                      color: const Color(0xFFFF8E49),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text: 'fueled by a ',
                  ),
                  TextSpan(
                    text: 'Deep Understanding of ',
                    style: context.displayMedium!.copyWith(
                      color: const Color(0xFFFF8E49),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text: 'your ',
                  ),
                  TextSpan(
                    text: 'Customer\'s Behavior. ',
                    style: context.displayMedium!.copyWith(
                      color: const Color(0xFFFF8E49),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text:
                        'Through our innovative feedback platform, you\'re not merely collecting data; you\'re unlocking the secrets to customer satisfaction, paving the way for more profits and sustained growth. Witness the magic of low marketing costs as your brand experience becomes a beacon, drawing in customers organically. We believe that every business has a unique narrative waiting to unfold, and with our solution, you\'ll not only tell your story but shape it into a resounding success. ',
                  ),
                  TextSpan(
                    text: 'It\'s more than feedback; ',
                    style: context.displayMedium!.copyWith(
                      color: const Color(0xFFFF8E49),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text:
                        'it\'s the key to your brand\'s evolution, ensuring that your business not only thrives but becomes an unstoppable force in your industry. Welcome to a future where success is not just a destination but a journey ',
                  ),
                  TextSpan(
                    text:
                        'fueled by insight, innovation, and unparalleled brand experience.',
                    style: context.displayMedium!.copyWith(
                      color: const Color(0xFFFF8E49),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textScaler: TextScaler.linear(context.titleScaleFactor),
              textAlign: TextAlign.justify,
              style: context.displayMedium!.copyWith(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_rightLayout(BuildContext context, Size screenSize) {
  return SizedBox(
    // width: screenSize.width * .3,
    height: 650,
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
    return Container(
      width: context.isDisplayLargeThanTablet ? 230 : 200,
      height: context.isDisplayLargeThanTablet ? 280 : 250,
      padding: const EdgeInsets.symmetric(horizontal: SizeConstant.p20),
      decoration: ShapeDecoration(
        color: const Color(0xFFF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConstant.p32),
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
                height: SizeConstant.p96, //200/
                width: SizeConstant.p96,
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
              style: context.displayMedium!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
