import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_color.dart';
import '../../../config/app_svg.dart';

class ItemMenu extends StatelessWidget {
  final String icon;
  final String title;
  const ItemMenu({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          print('ssss');
        },
        child: Container(
          decoration: const BoxDecoration(
            color: AppColor.light,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(title),
              ),
              SvgPicture.asset(
                AppSVG.arrowRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
