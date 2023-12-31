import 'package:flutter/material.dart';

class ToolbarTextWidget extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;
  final Color color;

  const ToolbarTextWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
