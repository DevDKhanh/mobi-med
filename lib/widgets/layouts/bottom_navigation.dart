import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_svg.dart';
import 'package:mobi_med/config/app_text_style.dart';
import 'package:mobi_med/router/Routes.dart';

class BottomNavigationBase extends StatefulWidget {
  final String? nameRoute;
  const BottomNavigationBase({
    super.key,
    this.nameRoute = '',
  });

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBaseState createState() => _BottomNavigationBaseState();
}

class _BottomNavigationBaseState extends State<BottomNavigationBase> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': Routes.homePage,
      'icon': AppSVG.iconHome,
      'icon_active': AppSVG.iconHomeActive,
      'tile': 'Trang chủ',
    },
    {
      'page': Routes.loginPage,
      'icon': AppSVG.calendarTick,
      'icon_active': AppSVG.calendarTickActive,
      'tile': 'Lịch khám',
    },
    {
      'page': null,
      'tile': 'Đặt lịch',
    },
    {
      'page': Routes.loginPage,
      'icon': AppSVG.notification,
      'icon_active': AppSVG.notificationActive,
      'tile': 'Thông báo',
    },
    {
      'page': Routes.loginPage,
      'icon': AppSVG.userOctagon,
      'icon_active': AppSVG.userOctagonActive,
      'tile': 'Cá nhân',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColor.light,
      shape: const CircularNotchedRectangle(),
      elevation: 8,
      notchMargin: 2.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _pages.map((page) {
          return GestureDetector(
            onTap: () {
              if (page['page'] != null) {
                Navigator.pushNamed(context, page['page']);
              }
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: page['page'] != null
                        ? SvgPicture.asset(page['page'] != null &&
                                widget.nameRoute == page['page']
                            ? page['icon_active']
                            : page['icon'])
                        : const SizedBox(
                            height: 24,
                          ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    page['tile'],
                    style: AppTextStyle.z11.copyWith(
                        fontWeight: FontWeight.w500,
                        color: page['page'] != null &&
                                widget.nameRoute == page['page']
                            ? AppColor.primary
                            : AppColor.textGrey),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
