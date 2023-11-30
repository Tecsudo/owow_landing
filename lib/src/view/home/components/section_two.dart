import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';

class SectionTwo extends StatefulWidget {
  const SectionTwo({super.key});

  @override
  State<SectionTwo> createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  Size screenSize = Config.screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 3.2,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: screenSize.width,
              height: screenSize.height * 2.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${Config.imagePath}/mid.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          MidPartOne(screenSize: screenSize),
          MidPartTwo(screenSize: screenSize),
        ],
      ),
    );
  }
}

class MidPartTwo extends StatelessWidget {
  const MidPartTwo({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * .7,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: screenSize.width * .01),
            width: screenSize.width,
            height: screenSize.height * 1.5,
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * .7,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 501,
                              height: 67,
                              child: Text(
                                'Lorem Ipsum is simply ',
                                style: TextStyle(
                                  color: Color(0xFFFF8E49),
                                  fontSize: 40,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                  letterSpacing: -0.61,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 543,
                              height: 182.41,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'O',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 128,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' W',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 64,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'O',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 96,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'W !',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 128,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 534,
                              height: 230.16,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          ' \ntext of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
                                      style: TextStyle(
                                        color: Color(0xFFFF8E49),
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
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width,
                  height: screenSize.height * .8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'text of the\nprinting and\ntypesetting',
                        gradientColors: const [
                          Color(0xFF4074BA),
                          Color(0xFF5EA3D9)
                        ],
                      ),
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'text of the\nprinting and\ntypesetting',
                        gradientColors: const [
                          Color(0xFFD33D54),
                          Color(0xFFDB6777)
                        ],
                      ),
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'text of the\nprinting and\ntypesetting',
                        gradientColors: const [
                          Color(0xFFED7B23),
                          Color(0xFFF4AE2C)
                        ],
                      ),
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'text of the\nprinting and\ntypesetting',
                        gradientColors: const [
                          Color(0xFF0AB89D),
                          Color(0xFF3DC0B5)
                        ],
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
              ],
            ),
          ),
        ));
  }
}

class MidPartTwoContentBox extends StatelessWidget {
  const MidPartTwoContentBox({
    super.key,
    required this.screenSize,
    required this.text,
    required this.gradientColors,
  });

  final Size screenSize;
  final String text;
  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * .23,
      height: 482,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 130,
            child: Container(
              width: screenSize.width * .23,
              height: 352,
              decoration: ShapeDecoration(
                color: const Color(0xFFF6F6F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(51),
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
          Positioned(
            left: 38,
            top: 0,
            child: Container(
              width: screenSize.width * .18,
              height: 352,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.71, 0.70),
                  end: const Alignment(-0.71, -0.7),
                  colors: gradientColors,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(51),
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
          Positioned(
            left: 95,
            top: 44.94,
            child: SizedBox(
              width: 181,
              height: 131.79,
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: -0.61,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    // Stack(
    //   children: [
    //     Positioned(
    //       top: -100,
    //       child: Container(
    //         width: screenSize.width * .23,
    //         height: 352,
    //         decoration: ShapeDecoration(
    //           color: const Color(0xFFF6F6F6),
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(51),
    //           ),
    //           shadows: const [
    //             BoxShadow(
    //               color: Color(0x33000000),
    //               blurRadius: 41.50,
    //               offset: Offset(0, 0),
    //               spreadRadius: 6,
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       top: -100,
    //       child: Container(
    //         width: screenSize.width * .18,
    //         height: 352,
    //         decoration: ShapeDecoration(
    //           gradient: const LinearGradient(
    //             begin: Alignment(0.71, 0.70),
    //             end: Alignment(-0.71, -0.7),
    //             colors: [Color(0xFF4074BA), Color(0xFF5EA3D9)],
    //           ),
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(51),
    //           ),
    //           shadows: const [
    //             BoxShadow(
    //               color: Color(0x33000000),
    //               blurRadius: 41.50,
    //               offset: Offset(0, 0),
    //               spreadRadius: 6,
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
  }
}

class MidPartOne extends StatelessWidget {
  const MidPartOne({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenSize.width * .01),
      width: screenSize.width,
      height: screenSize.height * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 501,
                height: 67,
                child: Text(
                  'Lorem Ipsum is simply ',
                  style: TextStyle(
                    color: Color(0xFFFF8E49),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: -0.61,
                  ),
                ),
              ),
              SizedBox(
                width: 543,
                height: 182.41,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 128,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' W',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 64,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'O',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 96,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'W !',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 128,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 534,
                height: 230.16,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            ' \ntext of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
                        style: TextStyle(
                          color: Color(0xFFFF8E49),
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
              ),
            ],
          ),
          MidContentShapes(screenSize: screenSize),
        ],
      ),
    );
  }
}

class MidContentShapes extends StatelessWidget {
  const MidContentShapes({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * .5,
      height: screenSize.height * 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MidShadowBox(
                  screenSize: screenSize,
                  iconPath: '${Config.imagePath}/mid_two.png',
                  text: 'Delivery',
                ),
                MidShadowBox(
                  screenSize: screenSize,
                  iconPath: '${Config.imagePath}/mid_three.png',
                  text: 'Pizza',
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MidShadowBox(
                  screenSize: screenSize,
                  iconPath: '${Config.imagePath}/mid_one.png',
                  text: 'Burger',
                ),
                MidShadowBox(
                  screenSize: screenSize,
                  iconPath: '${Config.imagePath}/mid_four.png',
                  text: 'Snacks',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
    log(iconPath, name: 'MidShadowBox');
    return Container(
      width: screenSize.width * .2,
      height: screenSize.height * .4,
      decoration: ShapeDecoration(
        color: const Color(0xFFF6F6F6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(51),
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
        child: Flexible(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: screenSize.height * .12,
                width: screenSize.width * .12,
                child: Image.asset(
                  iconPath,
                )),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
                letterSpacing: -0.61,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
