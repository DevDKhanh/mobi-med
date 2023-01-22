import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_constants.dart';
import 'package:mobi_med/router/Routes.dart';
import 'package:mobi_med/widgets/layouts/bottom_navigation.dart';
import 'package:mobi_med/widgets/layouts/button_navigation_calendar.dart';
import 'package:mobi_med/widgets/screens/home/banner_home.dart';
import 'package:mobi_med/widgets/screens/home/doctor.dart';
import 'package:mobi_med/widgets/screens/home/header_home.dart';
import 'package:mobi_med/widgets/screens/home/hospital.dart';
import 'package:mobi_med/widgets/screens/home/list_service.dart';
import 'package:mobi_med/widgets/screens/home/menu_services/menu_services.dart';
import 'package:mobi_med/widgets/screens/home/menu_utils/menu_utils.dart';
import 'package:mobi_med/widgets/screens/home/news.dart';
import 'package:mobi_med/widgets/screens/home/section_home_base.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const ButtonAddCalendar(),
      bottomNavigationBar: BottomNavigationBase(
        nameRoute: Routes.homePage,
      ),
      body: Container(
        color: AppColor.primary,
        child: Column(
          children: [
            const HeaderHome(),
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      width: AppConst.fullWidth(context),
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: AppColor.light,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        children: const [
                          MenuServices(),
                          BannerHome(),
                          MenuUtils(),
                        ],
                      ),
                    ),
                    Container(
                      height: 8,
                      color: AppColor.lightGrey,
                    ),
                    Container(
                      width: AppConst.fullWidth(context),
                      padding: const EdgeInsets.all(20),
                      color: AppColor.light,
                      child: const SectionHomeBase(
                        title: 'Gói dịch vụ nổi bật',
                        child: ListService(),
                      ),
                    ),
                    Container(
                      height: 8,
                      color: AppColor.lightGrey,
                    ),
                    Container(
                      width: AppConst.fullWidth(context),
                      padding: const EdgeInsets.all(20),
                      color: AppColor.light,
                      child: const SectionHomeBase(
                        title: 'Cơ sở y tế',
                        child: Hospital(),
                      ),
                    ),
                    Container(
                      height: 8,
                      color: AppColor.lightGrey,
                    ),
                    Container(
                      width: AppConst.fullWidth(context),
                      padding: const EdgeInsets.all(20),
                      color: AppColor.light,
                      child: const SectionHomeBase(
                        title: 'Bác sĩ nổi bật',
                        child: Doctor(),
                      ),
                    ),
                    Container(
                      height: 8,
                      color: AppColor.lightGrey,
                    ),
                    Container(
                      width: AppConst.fullWidth(context),
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
                      color: AppColor.light,
                      child: const SectionHomeBase(
                        title: 'Tin tức mới nhất',
                        child: News(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
