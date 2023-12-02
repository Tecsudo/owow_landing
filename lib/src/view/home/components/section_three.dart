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
