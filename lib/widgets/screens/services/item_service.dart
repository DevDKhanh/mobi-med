import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_constants.dart';
import 'package:mobi_med/config/app_svg.dart';
import 'package:mobi_med/config/app_text_style.dart';
import 'package:mobi_med/widgets/screens/services/tag_service.dart';

class ItemSevice extends StatelessWidget {
  const ItemSevice({super.key});

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
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: AppColor.lightGrey,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://familydoctor.org/wp-content/uploads/2018/02/41808433_l.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32)),
                                  color: Color(0xff59BF87),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                      AppSVG.starStrock,
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Nổi bật',
                                      style: AppTextStyle.z11
                                          .copyWith(color: AppColor.light),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: AppColor.lightBlue,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(32),
                                  ),
                                  color: AppColor.light,
                                ),
                                child: Text(
                                  '-20%',
                                  style: AppTextStyle.z11.copyWith(
                                      color: AppColor.primary,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'XÉT NGHIỆM ADN HÀNH CHÍNH',
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
                                    'Xét nghiệm Gene',
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
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        TagService(
                          title: 'Khám tại viện',
                          titleColor: Color(0xFF009F70),
                          color: Color.fromARGB(30, 0, 204, 143),
                        ),
                        TagService(
                          title: 'Khám tại nhà',
                          titleColor: Color(0xFF4C3CBA),
                          color: Color.fromARGB(30, 112, 94, 232),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColor.lightBlue,
                  ),
                ),
              ),
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
                            text: '800.000đ ',
                            style: AppTextStyle.p.copyWith(
                                color: Colors.red, fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: '1.000.000đ',
                                style: AppTextStyle.z11.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  color: AppColor.textGrey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
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
