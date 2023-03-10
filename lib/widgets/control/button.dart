import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';

class Button extends StatefulWidget {
  final Text text;
  final GestureTapCallback onPressed;
  final Color backgroundColor;
  final double height;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 48,
    this.backgroundColor = AppColor.primary,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: ElevatedButton(
        onPressed: () {
          widget.onPressed();
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(widget.height),
          backgroundColor: widget.backgroundColor,
        ),
        child: widget.text,
      ),
    );
    ;
  }
}
