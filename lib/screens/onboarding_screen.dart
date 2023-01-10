import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_text_style.dart';
import 'package:mobi_med/models/onboarding_screen.dart';
import 'package:mobi_med/router/Routes.dart';
import 'package:mobi_med/widgets/control/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _index = 0;

  final List<ScreenOnBoard> listOnBoard = [
    ScreenOnBoard(
        img: 'assets/images/Onboarding1.png',
        title: 'Đội ngũ chuyên gia',
        des:
            'MobiMed kết nối nhiều chuyên gia chuyên nghiệp có thâm niên, nhiệt huyết'),
    ScreenOnBoard(
        img: 'assets/images/Onboarding2.png',
        title: 'Đa dạng tiện ích',
        des:
            'Đặt lịch khám. tư vấn trực tuyến, tra cứu, theo dõi sức khỏe, theo dõi kết quả và đơn thuốc.'),
    ScreenOnBoard(
        img: 'assets/images/Onboarding3.png',
        title: 'Sức khỏe gia đình',
        des:
            'MobiMed giúp quản lý hồ sơ sức khỏe cho cá nhân và các thành viên trong gia đình.'),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  void nextScreen() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
    setState(() {
      if (_index == listOnBoard.length - 1) {
        Navigator.pushReplacementNamed(context, Routes.loginPage);
      }
      if (_index < listOnBoard.length - 1) _index += 1;
    });
  }

  void skip() {
    setState(() {
      _index = listOnBoard.length - 1;
    });
    _pageController.animateToPage(
      _index,
      curve: Curves.easeIn,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
                color: AppColor.light,
                child: PageView.builder(
                    itemCount: listOnBoard.length,
                    onPageChanged: (value) {
                      setState(() {
                        _index = value;
                      });
                    },
                    controller: _pageController,
                    itemBuilder: ((context, index) =>
                        Image.asset(listOnBoard[index].img)))),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: AppColor.light,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
                  child: Column(
                    children: <Widget>[
                      Text(
                        listOnBoard[_index].title,
                        style:
                            AppTextStyle.h1.copyWith(color: AppColor.primary),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        listOnBoard[_index].des,
                        style:
                            AppTextStyle.p.copyWith(color: AppColor.textGrey),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            listOnBoard.length,
                            (index) => Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                width: index == _index ? 24 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: index == _index
                                        ? AppColor.primary
                                        : AppColor.lightBlue,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(32))),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Button(
                        text: Text(
                          _index == listOnBoard.length - 1
                              ? 'Bắt đầu'
                              : 'Tiếp tục',
                          style: AppTextStyle.p
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        onPressed: nextScreen,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      _index != listOnBoard.length - 1
                          ? SizedBox(
                              height: 48,
                              width: double.infinity,
                              child: TextButton(
                                  onPressed: skip,
                                  child: Text(
                                    'Bỏ qua',
                                    style: AppTextStyle.p
                                        .copyWith(color: AppColor.textNeutral),
                                  )),
                            )
                          : const SizedBox(),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
