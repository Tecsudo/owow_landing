import 'package:flutter/material.dart';

class MidPartTwo extends StatelessWidget {
  const MidPartTwo({
    super.key,
    required this.screenSize,
    required this.servicesKey,
  });

  final Size screenSize;
  final GlobalKey servicesKey;

  @override
  Widget build(BuildContext context) {
    return Align(
        key: servicesKey,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * .2,
            bottom: screenSize.height * 0.5,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: screenSize.width * .01),
            width: screenSize.width,
            height: screenSize.height * 1.5,
            child: Column(
              children: [
                SizedBox(
                  width: screenSize.width,
                  height: screenSize.height * .8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'Customer’s Feedback',
                        gradientColors: const [
                          Color(0xFF4074BA),
                          Color(0xFF5EA3D9)
                        ],
                      ),
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'Customer’s behavior and Choices',
                        gradientColors: const [
                          Color(0xFFD33D54),
                          Color(0xFFDB6777)
                        ],
                      ),
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'Trends and Statistics',
                        gradientColors: const [
                          Color(0xFFED7B23),
                          Color(0xFFF4AE2C)
                        ],
                      ),
                      MidPartTwoContentBox(
                        screenSize: screenSize,
                        text: 'Social and Organic Growth',
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
      width: screenSize.width * .22,
      height: screenSize.height * .5,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenSize.width * .22,
              height: screenSize.height * .36,
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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenSize.width * .17,
              height: screenSize.height * .37, //height: 352,
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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: screenSize.height * .02),
              width: screenSize.width * .15,
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
