import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../common/header.dart';

class SectionOne extends StatefulWidget {
  const SectionOne({super.key});

  @override
  State<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne> {
  Size screenSize = UIConfig.screenSize;

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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/top.png'),
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
                  children: [
                    const SizedBox(
                      width: 543,
                      height: 182.41,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'O',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 128,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' W',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 64,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'O',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 96,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'W !',
                              style: TextStyle(
                                color: Colors.white,
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
                    const SizedBox(
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
                    ),
                    SizedBox(
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
                    )
                  ],
                ),
                Container(
                  width: screenSize.width * .5,
                  height: screenSize.height * .8,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/top_one.png'),
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
