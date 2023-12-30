import 'package:flutter/material.dart';
import 'package:owow/core/constant/gap_constant.dart';
import 'package:owow/core/extensions/build_context_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../../core/constant/size_constant.dart';
import '../../../common/background.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: SizedBox(
        height: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topLayout(context),
            GapConstant.h64,
            _lowerLayout(context),
          ],
        ),
      ),
    );
  }

  Widget _lowerLayout(BuildContext context) {
    return MaxWidthBox(
      // width: screenSize.width,
      // height: screenSize.height * .8,
      maxWidth: MaxSizeConstant.maxWidth,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 450,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _serviceContainerLayout(
                context: context,
                text: 'Customer Insights',
                gradientColors: const [Color(0xFF4074BA), Color(0xFF5EA3D9)],
              ),
              _serviceContainerLayout(
                context: context,
                text: 'Customer Engagement',
                gradientColors: const [Color(0xFFD33D54), Color(0xFFDB6777)],
              ),
              _serviceContainerLayout(
                context: context,
                text: 'Improve Customer Experience',
                gradientColors: const [Color(0xFFED7B23), Color(0xFFF4AE2C)],
              ),
              _serviceContainerLayout(
                context: context,
                text: 'Better ROI, Improve Cost Cutting',
                gradientColors: const [Color(0xFF0AB89D), Color(0xFF3DC0B5)],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: 500,
            child: Text(
              'Revolutionizing Success: ',
              style: context.displayMedium!.copyWith(
                color: const Color(0xFFFF8E49),
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        GapConstant.h12,
        SizedBox(
          width: 1000,
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Unleashing Immediate Feedback for ',
                ),
                TextSpan(
                  text: '40% More Customer Insights, ',
                  style: context.displayMedium!.copyWith(
                    color: Colors.blue,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: '25% Higher Satisfaction, ',
                  style: context.displayMedium!.copyWith(
                    color: Colors.orange,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: '30% Increased Brand Loyalty, ',
                  style: context.displayMedium!.copyWith(
                    color: Colors.pink,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const TextSpan(
                  text: 'and a Strategic ',
                ),
                TextSpan(
                  text: 'ROI Boost of 20% ',
                  style: context.displayMedium!.copyWith(
                    color: Colors.green,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const TextSpan(
                  text: 'with ',
                ),
                TextSpan(
                  text: '15% Cost Cutting. ',
                  style: context.displayMedium!.copyWith(
                    color: Colors.red,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            style: context.displayMedium!.copyWith(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _serviceContainerLayout(
      {required String text,
      required List<Color> gradientColors,
      required BuildContext context}) {
    return SizedBox(
      width: 300,
      height: 400,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 270,
              height: 300,
              decoration: ShapeDecoration(
                color: const Color(0xFFF6F6F6),
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
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 220,
              height: 250,
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
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: SizeConstant.p40),
              width: 270,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: context.headlineSmall!.copyWith(
                  color: Colors.black,
                  // color: const Color(0xFFFF8E49),
                  fontSize: 26,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MidPartTwoContentBox extends StatelessWidget {
//   const MidPartTwoContentBox({
//     super.key,
//     required this.screenSize,
//     required this.text,
//     required this.gradientColors,
//   });

//   final Size screenSize;
//   final String text;
//   final List<Color> gradientColors;

//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
