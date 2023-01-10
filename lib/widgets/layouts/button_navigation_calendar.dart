import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/app_color.dart';
import '../../config/app_constants.dart';
import '../../config/app_img.dart';
import '../../config/app_svg.dart';
import '../../config/app_text_style.dart';

Function item = ({
  required String image,
  required String title,
  required String note,
  required Color color,
}) =>
    SpeedDialChild(
      elevation: 0,
      child: GestureDetector(
        onTap: () {
          print('click-1');
        },
        child: Container(
          height: 72,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Image.asset(
                  image,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12, bottom: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.p.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        note,
                        style: AppTextStyle.z11.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColor.textGrey),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

class ButtonAddCalendar extends StatefulWidget {
  const ButtonAddCalendar({super.key});

  @override
  State<ButtonAddCalendar> createState() => _ButtonAddCalendarState();
}

class _ButtonAddCalendarState extends State<ButtonAddCalendar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SpeedDial(
        elevation: 8,
        spaceBetweenChildren: 12,
        backgroundColor: AppColor.primary,
        activeBackgroundColor: Colors.white,
        childrenButtonSize: Size(AppConst.fullWidth(context) * 0.9, 72),
        children: [
          item(
            image: AppImages.firstAid,
            title: 'Đặt khám tại nhà',
            note: 'Đặt lịch giúp bạn khám tại nhà thuận tiện',
            color: const Color(0xff4C3CBA),
          ),
          item(
            image: AppImages.emergencyCall,
            title: 'Đặt khám trực tuyến',
            note: 'Kết nối với bác sĩ có kinh nghiệm cao',
            color: const Color(0xff116AD2),
          ),
          item(
            image: AppImages.hospital,
            title: 'Đặt khám tại CSYT',
            note: 'Tiếp đón ưu tiên tại những cơ sở y tế hàng đầu',
            color: const Color(0xff009467),
          ),
        ],
        overlayColor: Colors.black,
        overlayOpacity: 0.3,
        activeChild: const Icon(
          Icons.close,
          size: 32,
          color: Colors.red,
        ),
        child: LayoutBuilder(
          builder: (p0, p1) {
            return SvgPicture.asset(
              AppSVG.calendarAdd,
              width: p1.maxWidth * 0.6,
            );
          },
        ),
      ),
    );
  }
}
