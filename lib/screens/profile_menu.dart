import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/app_color.dart';
import '../config/app_constants.dart';
import '../config/app_svg.dart';
import '../config/app_text_style.dart';
import '../router/Routes.dart';
import '../widgets/layouts/bottom_navigation.dart';
import '../widgets/layouts/button_navigation_calendar.dart';
import '../widgets/screens/profile/item_menu.dart';
import '../widgets/screens/profile/item_tab.dart';

class ProfileMenuScreen extends StatefulWidget {
  const ProfileMenuScreen({super.key});

  @override
  State<ProfileMenuScreen> createState() => _ProfileMenuScreenState();
}

class _ProfileMenuScreenState extends State<ProfileMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const ButtonAddCalendar(),
      bottomNavigationBar: BottomNavigationBase(
        nameRoute: Routes.profileMenu,
      ),
      body: Container(
        color: const Color(0xffF6F8FB),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_header.png"),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('pronfile');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
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
                    child: Row(
                      children: [
                        const AvatarView(
                          radius: 32,
                          borderColor: AppColor.lightGrey,
                          borderWidth: 3,
                          avatarType: AvatarType.CIRCLE,
                          backgroundColor: AppColor.lightGrey,
                          imagePath:
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg",
                          placeHolder: Icon(
                            Icons.person,
                            size: 40,
                          ),
                          errorWidget: Icon(
                            Icons.error,
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nguy???n V??n H??ng',
                                style: AppTextStyle.p.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Nam - 12/03/1991',
                                style: AppTextStyle.z12
                                    .copyWith(color: AppColor.textGrey),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: const BoxDecoration(
                                    color: AppColor.primary,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32))),
                                child: Text(
                                  'Xem th??ng tin',
                                  style: AppTextStyle.z12.copyWith(
                                    color: AppColor.light,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          AppSVG.arrowRight,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 12),
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
                  child: Row(
                    children: [
                      SvgPicture.asset(AppSVG.wallet),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'S??? d?? MobiMed',
                              style: AppTextStyle.z12.copyWith(
                                color: AppColor.textGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              '0??',
                              style: AppTextStyle.p.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xff59BF87),
                        ),
                        child: const Text(
                          'N???p th??m',
                          style: AppTextStyle.z13,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      ItemTab(
                        img: AppSVG.profile,
                        title: 'H??? s??\nKh??m b???nh',
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      ItemTab(
                        img: AppSVG.family,
                        title: 'Th??nh vi??n\nGia ????nh',
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      ItemTab(
                        img: AppSVG.bill,
                        title: 'L???ch s???\nGiao d???ch',
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      ItemTab(
                        img: AppSVG.hospitalPlus,
                        title: '??i???u b???n\nQuan t??m',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 12),
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
                        ItemMenu(
                          icon: AppSVG.doctor,
                          title: 'B??c s?? ???? kh??m',
                        ),
                        Container(
                          color: const Color(0xffEAEEF3),
                          height: 1.5,
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                        ),
                        ItemMenu(
                          icon: AppSVG.settings,
                          title: 'C??i ?????t',
                        ),
                        Container(
                          color: const Color(0xffEAEEF3),
                          height: 1.5,
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                        ),
                        ItemMenu(
                          icon: AppSVG.sms,
                          title: 'H??m th?? g??p ??',
                        ),
                        Container(
                          color: const Color(0xffEAEEF3),
                          height: 1.5,
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                        ),
                        ItemMenu(
                          icon: AppSVG.docs,
                          title: '??i???u kho???n s??? d???ng',
                        ),
                        Container(
                          color: const Color(0xffEAEEF3),
                          height: 1.5,
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                        ),
                        ItemMenu(
                          icon: AppSVG.about,
                          title: 'Gi???i thi???u',
                        ),
                        Container(
                          color: const Color(0xffEAEEF3),
                          height: 1.5,
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                        ),
                        ItemMenu(
                          icon: AppSVG.share,
                          title: 'Chia s??? ???ng d???ng',
                        ),
                        Container(
                          color: const Color(0xffEAEEF3),
                          height: 1.5,
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                        ),
                        ItemMenu(
                          icon: AppSVG.logout,
                          title: '????ng xu???t',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 32),
                  child: Text(
                    AppConst.version,
                    style: AppTextStyle.p.copyWith(
                      color: const Color(0xff788A9B),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
