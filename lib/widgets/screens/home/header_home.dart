import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_text_style.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_header.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Nguyễn Tiến Hải',
                    style: AppTextStyle.h3.copyWith(color: AppColor.light),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Hỗ trợ tận tâm vì sức khỏe của bạn',
                    style: AppTextStyle.p.copyWith(color: AppColor.light),
                  )
                ],
              ),
              const AvatarView(
                radius: 24,
                borderColor: AppColor.textGrey,
                avatarType: AvatarType.RECTANGLE,
                backgroundColor: AppColor.textGrey,
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
            ],
          ),
        ),
      ),
    );
  }
}
