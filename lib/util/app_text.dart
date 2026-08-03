import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color colors;
  final FontWeight fontWeight;
  final double size;
  final TextDecoration textDecoration;
  final TextOverflow textOverflow;
  final int maxlin;
  final TextAlign textAlign;
  final TextDirection textDirection;
  const AppText({
    super.key,
    required this.text,
    this.colors = Colors.black,
    this.fontWeight = FontWeight.w500,
    this.maxlin = 1,
    this.size = 18,
    this.textDirection = TextDirection.ltr,
    this.textAlign = TextAlign.justify,
    this.textOverflow = TextOverflow.ellipsis,
    this.textDecoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxlin,
      overflow: textOverflow,
      style: TextStyle(
        decoration: textDecoration,
        fontSize: size,
        fontWeight: fontWeight,
        color: colors,
      ),
    );
  }
}
