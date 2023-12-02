import 'package:flutter/material.dart';

class WordLogo extends StatelessWidget {
  const WordLogo({
    super.key,
    required this.screenSize,
    required this.logoColor,
  });

  final Size screenSize;
  final Color logoColor;
  TextSpan _buildTextSpan(String text, double fontSize) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: logoColor,
        fontSize: fontSize,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 543,
      // height: screenSize.height * 0.2,
      child: Text.rich(
        TextSpan(
          children: [
            _buildTextSpan('O', 128),
            _buildTextSpan(' W', 64),
            _buildTextSpan('O', 96),
            _buildTextSpan('W !', 128),
          ],
        ),
      ),
    );
  }
}
