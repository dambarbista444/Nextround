import 'package:flutter/material.dart';

class LeftAlignedText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final EdgeInsets edgeInsets;

  const LeftAlignedText({
    super.key,
    required this.text,
    required this.textStyle,
    required this.edgeInsets,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: edgeInsets,
        child: Text(text, style: textStyle),
      ),
    );
  }
}