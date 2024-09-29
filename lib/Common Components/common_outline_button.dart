import 'package:flutter/material.dart';

class CommonOutlineButton extends StatefulWidget {
  final void Function() onTap;
  final String buttonTitle;
  final Color backgroundColor;
  final TextStyle textStyle;
  final double buttonHeight;

  const CommonOutlineButton({super.key, required this.onTap, required this.buttonTitle, required this.backgroundColor, required this.textStyle, required this.buttonHeight});

  @override
  State<CommonOutlineButton> createState() => _CommonOutlineButtonState();
}

class _CommonOutlineButtonState extends State<CommonOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5.0),
      child: SizedBox(
        height: widget.buttonHeight,
        child: OutlinedButton(onPressed: widget.onTap,
          style: OutlinedButton.styleFrom(
              backgroundColor: widget.backgroundColor
          ), child: Text(widget.buttonTitle, style: widget.textStyle),
        ),
      ),
    );
  }
}
