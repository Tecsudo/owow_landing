import 'package:flutter/material.dart';

class MidPartThree extends StatelessWidget {
  const MidPartThree({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          right: screenSize.width * .03,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
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
                      height: screenSize.height * .25,
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
