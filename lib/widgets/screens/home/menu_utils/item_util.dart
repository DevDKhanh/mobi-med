import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_img.dart';
import 'package:mobi_med/config/app_text_style.dart';

class ItemUtil extends StatelessWidget {
  final String title;
  final String icon;
  final String routeName;
  const ItemUtil({
    super.key,
    required this.icon,
    required this.routeName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border.all(
          color: AppColor.boderLightBlue,
        ),
      ),
      child: Column(
        children: [
          LayoutBuilder(
            builder: ((p0, p1) {
              return Image.asset(
                icon,
                width: p1.maxWidth * 0.55,
              );
            }),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.z11.copyWith(color: AppColor.textGrey),
          )
        ],
      ),
    );
  }
}
