import 'package:flutter/material.dart';

class WordLogo extends StatelessWidget {
  const WordLogo({
    super.key,
    required this.logoColor,
  });

  final Color logoColor;
  TextSpan _buildTextSpan(String text, double fontSize) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: logoColor,
        fontSize: fontSize,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text.rich(
        TextSpan(
          children: [
            _buildTextSpan('O', 84),
            _buildTextSpan(' W', 34),
            _buildTextSpan('O', 60),
            _buildTextSpan('W !', 84),
          ],
        ),
      ),
    );
  }
}
