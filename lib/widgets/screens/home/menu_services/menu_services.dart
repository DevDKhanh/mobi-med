import 'package:flutter/material.dart';
import 'package:mobi_med/widgets/screens/home/menu_services/item_menu.dart';

import '../../../../config/app_img.dart';
import '../../../../router/Routes.dart';

class MenuServices extends StatelessWidget {
  const MenuServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ItemMenuHome(
            routeName: Routes.loginPage,
            colorBg: const Color(0xff00CC8F),
            colorImage: const Color(0xff009467),
            title: 'Đặt khám tại \nCSYT',
            image: AppImages.hospital,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 1,
          child: ItemMenuHome(
            routeName: Routes.loginPage,
            colorBg: const Color(0xff2797FF),
            colorImage: const Color(0xff116AD2),
            title: 'Đặt khám \nTrực tuyến',
            image: AppImages.emergencyCall,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 1,
          child: ItemMenuHome(
            routeName: Routes.loginPage,
            colorBg: const Color(0xff705EE8),
            colorImage: const Color(0xff4C3CBA),
            title: 'Đặt khám \ntại nhà',
            image: AppImages.firstAid,
          ),
        ),
      ],
    );
  }
}
