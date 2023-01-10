import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_text_style.dart';

class TagService extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color color;
  const TagService({
    super.key,
    required this.color,
    required this.title,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(4))),
      child: Text(
        title,
        style: AppTextStyle.z11.copyWith(color: titleColor),
      ),
    );
  }
}
