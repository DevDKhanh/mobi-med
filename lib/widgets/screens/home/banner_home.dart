import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_constants.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.fullWidth(context) * 0.5,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(color: AppColor.lightGrey),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Image.network(
          'https://www.alert-software.com/hubfs/it%20department%20hospital.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
