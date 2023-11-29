import 'package:flutter/material.dart';

import '../../../../core/constant/ui_constant.dart';
import '../../common/footer.dart';

class SectionThree extends StatefulWidget {
  const SectionThree({super.key});

  @override
  State<SectionThree> createState() => _SectionThreeState();
}

class _SectionThreeState extends State<SectionThree> {
  Size screenSize = UIConfig.screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height * 1.1,
      child: Stack(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 1.1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/end.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Align(alignment: Alignment.bottomCenter, child: Footer()),
        ],
      ),
    );
  }
}
