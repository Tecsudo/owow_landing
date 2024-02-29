import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:owow/core/constant/gap_constant.dart';
import 'package:owow/core/extensions/build_context_extension.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constant/size_constant.dart';
import '../../../../core/constant/ui_constant.dart';
import '../../../../core/widget/word_logo.dart';
import '../../common/background.dart';
import 'contact_us_layout.dart';

class HomeHeaderLayout extends StatefulWidget {
  const HomeHeaderLayout({super.key, required this.screenSize});

  final Size screenSize;

  @override
  State<HomeHeaderLayout> createState() => _HomeHeaderLayoutState();
}

class _HomeHeaderLayoutState extends State<HomeHeaderLayout> {
  final _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

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
              child: ResponsiveRowColumn(
                columnMainAxisAlignment: MainAxisAlignment.center,
                columnSpacing: 32,
                rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                layout: context.isDisplayLargeThanTablet
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 5,
                    columnOrder: 2,
                    child: _leftLayout(context),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 4,
                    columnOrder: 1,
                    child: _rightLayout(context),
                  ),
                ],
              ),
            ),
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

  Widget _rightLayout(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: context.isDisplayLargeThanTablet ? 380 : 300),
      child: Image.asset(
        '${Config.imagePath}/top_one.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _leftLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WordLogo(
          logoColor: Colors.white,
        ),
        SizedBox(
            width: context.isDisplayLargeThanTablet ? 500 : 300,
            child: DefaultTextStyle(
              maxLines: 1,
              style: context.displayMedium!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: Colors.white,
                fontFamily: 'Poppins',
                letterSpacing: -0.3,
              ),
              child: AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'WOW YOUR WALLET',
                    speed: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                  ),
                  TypewriterAnimatedText(
                    'Data-Driven Perspective',
                    speed: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                  ),
                  TypewriterAnimatedText(
                    'We are in the END (Reach) game',
                    speed: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                  ),
                  TypewriterAnimatedText(
                    'Turning your "Ows!" to "WOWs!"',
                    speed: const Duration(milliseconds: 200),
                    curve: Easing.legacy,
                  ),
                  TypewriterAnimatedText(
                    'We Make \'SOLD\' Happen!',
                    speed: const Duration(milliseconds: 200),
                    curve: Easing.legacy,
                  ),
                  TypewriterAnimatedText(
                    'Not all Heroes wear Capes, some do Sales!',
                    speed: const Duration(milliseconds: 200),
                    curve: Easing.legacy,
                  ),
                  TypewriterAnimatedText(
                    'Smoothen your Rush Hours',
                    speed: const Duration(milliseconds: 200),
                    curve: Easing.legacy,
                  ),
                  TypewriterAnimatedText(
                    'Wow Your Dead Hours',
                    speed: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                  ),
                ],
              ),
            )),
        GapConstant.h12,
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: context.isDisplayLargeThanTablet ? 60 : 60,
            maxWidth: context.isDisplayLargeThanTablet ? 250 : 300,
            minHeight: context.isDisplayLargeThanTablet ? 50 : 60,
            minWidth: context.isDisplayLargeThanTablet ? 200 : 250,
          ),
          child: ResponsiveRowColumn(
            columnMainAxisAlignment: MainAxisAlignment.start,
            columnSpacing: 32,
            rowMainAxisAlignment: MainAxisAlignment.center,
            layout: context.isDisplayLargeThanTablet
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 4,
                columnOrder: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConstant.p12, vertical: SizeConstant.p16),
                  child: CustomTextFormField(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    controller: _codeController,
                    hintText: 'Code',
                    enabledBorderColor: Colors.black,
                    enabledBorderWidth: 1,
                    focusedBorderColor: Colors.black,
                    focusedBorderWidth: 2,
                    focusedErrorBorderWidth: 1,
                    errorBorderWidth: 1,
                    screenSize: widget.screenSize,
                    onChanged: (value) {
                      log(value, name: 'Form | Code');
                    },
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Code';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 4,
                columnOrder: 1,
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
                      'Enter',
                      style: TextStyle(
                        color: Color(0xFFFF9148),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}

//check the responsive framework
