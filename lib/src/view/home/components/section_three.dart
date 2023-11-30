import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../common/footer.dart';

class SectionThree extends StatefulWidget {
  const SectionThree({super.key});

  @override
  State<SectionThree> createState() => _SectionThreeState();
}

class _SectionThreeState extends State<SectionThree> {
  Size screenSize = Config.screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 2.2,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenSize.width,
              height: screenSize.height * 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${Config.imagePath}/end.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenSize.width * .01),
            width: screenSize.width,
            height: screenSize.height * 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenSize.height * .3,
                    ),
                    const SizedBox(
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
                    const SizedBox(
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
                    const SizedBox(
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
                SizedBox(
                  height: screenSize.height * 1.5,
                  child: Flexible(
                    child: Column(
                      children: [
                        EndContentShapes(screenSize: screenSize),
                        EndContentShapes(screenSize: screenSize),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 1.5,
                  child: Flexible(
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenSize.height * .2,
                        ),
                        EndContentShapes(screenSize: screenSize),
                        EndContentShapes(screenSize: screenSize),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: screenSize.height * 0.6,
                left: screenSize.width * 0.05,
              ),
              child: const SizedBox(
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
            ),
          ),
          const Align(alignment: Alignment.bottomCenter, child: Footer()),
        ],
      ),
    );
  }
}

class EndContentShapes extends StatelessWidget {
  const EndContentShapes({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: screenSize.width * .25,
      height: screenSize.height * .6,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.71, 0.70),
          end: Alignment(-0.71, -0.7),
          colors: [Color(0xFF4074BA), Color(0xFF5EA3D9)],
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
    );
  }
}
