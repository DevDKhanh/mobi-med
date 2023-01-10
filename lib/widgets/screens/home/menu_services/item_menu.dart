import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_text_style.dart';

class ItemMenuHome extends StatelessWidget {
  final Color colorBg;
  final Color colorImage;
  final String image;
  final String title;
  final String? routeName;

  const ItemMenuHome({
    super.key,
    required this.colorBg,
    required this.colorImage,
    required this.image,
    required this.title,
    this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: () {
            if (routeName != null) Navigator.pushNamed(context, '$routeName');
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorBg,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: constraints.maxWidth * 0.6,
                  height: constraints.maxWidth * 0.6,
                  decoration: BoxDecoration(
                    color: colorImage,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: Image.asset(
                    image,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.p.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColor.light,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
