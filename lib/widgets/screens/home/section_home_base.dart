import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_text_style.dart';

class SectionHomeBase extends StatelessWidget {
  final String title;
  final Widget child;
  const SectionHomeBase({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.h3,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: Text(
                'Tất cả',
                style: AppTextStyle.p.copyWith(
                  color: AppColor.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 12),
          child: child,
        )
      ],
    );
  }
}
