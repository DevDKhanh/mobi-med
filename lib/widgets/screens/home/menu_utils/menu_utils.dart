import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_img.dart';
import 'package:mobi_med/widgets/screens/home/menu_utils/item_util.dart';

class MenuUtils extends StatelessWidget {
  const MenuUtils({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ItemUtil(
            title: 'Tiện ích Mẹ & Bé',
            icon: AppImages.momAndBaby,
            routeName: '',
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 1,
          child: ItemUtil(
            title: 'Tiện ích Phụ nữ',
            icon: AppImages.women,
            routeName: '',
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 1,
          child: ItemUtil(
            title: 'Tiện ích đời sống',
            icon: AppImages.life,
            routeName: '',
          ),
        ),
      ],
    );
  }
}
