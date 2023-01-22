import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_color.dart';
import '../../../config/app_text_style.dart';

class ItemTab extends StatelessWidget {
  final String img;
  final String title;
  const ItemTab({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          print('object');
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 12, 5, 5),
          decoration: const BoxDecoration(
            color: AppColor.light,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(16, 163, 169, 181),
                blurRadius: 16,
                offset: Offset(0, 8), // Shadow position
              ),
              BoxShadow(
                color: Color.fromARGB(40, 163, 169, 181),
                blurRadius: 4,
                offset: Offset(0, 2), // Shadow position
              ),
            ],
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                img,
                width: 43,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyle.z11.copyWith(
                  color: AppColor.textGrey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
