import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_constants.dart';
import 'package:mobi_med/config/app_svg.dart';
import 'package:mobi_med/config/app_text_style.dart';

class ItemDoctor extends StatelessWidget {
  const ItemDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConst.fullWidth(context) * 0.8,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.lightBlue,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          color: AppColor.lightGrey,
                          border: Border.all(color: const Color(0xffF3F9FF)),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://www.aamc.org/sites/default/files/styles/scale_and_crop_1200_x_666/public/Public%20Opinion%20Research%201200x666.jpg?itok=Z9g0DOPe'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BS CKII. Nguyễn Văn Trung',
                                style: AppTextStyle.p.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    child: Text(
                                      '5.0',
                                      style: AppTextStyle.p.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '(123)',
                                    style: AppTextStyle.p.copyWith(
                                      color: AppColor.textGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chuyên khoa Tim mạch',
                                    style: AppTextStyle.z11.copyWith(
                                      color: AppColor.textGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Bệnh viện Bạch Mai',
                                    style: AppTextStyle.z11.copyWith(
                                      color: AppColor.textGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Phí khám',
                          style: AppTextStyle.z11.copyWith(
                            color: AppColor.textGrey,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: '300.000đ',
                            style: AppTextStyle.p.copyWith(
                                color: Colors.red, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  LayoutBuilder(
                    builder: (p0, p1) {
                      return Container(
                        width: p1.maxHeight,
                        height: p1.maxHeight,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: AppColor.lightBlue,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(200),
                          ),
                        ),
                        child: SvgPicture.asset(
                          AppSVG.heart,
                          fit: BoxFit.scaleDown,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32.0),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            AppSVG.calendarAddOutline,
                            fit: BoxFit.scaleDown,
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            minimumSize: const Size.fromHeight(48),
                            backgroundColor: AppColor.lightBlue,
                          ),
                          label: Text(
                            'Đặt khám',
                            style: AppTextStyle.p.copyWith(
                              color: AppColor.primary,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
