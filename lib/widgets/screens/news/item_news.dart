import 'package:flutter/material.dart';

import '../../../config/app_constants.dart';
import '../../../config/app_text_style.dart';
import '../../../config/app_color.dart';

class ItemNews extends StatelessWidget {
  const ItemNews({super.key});

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
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: AppColor.lightGrey,
                            border: Border.all(color: const Color(0xffF3F9FF)),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi5xu-L9T8U499OQYTJJH33icIs2XfODpBBQ&usqp=CAU'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cẩm nang y tế',
                                style: AppTextStyle.z11
                                    .copyWith(color: AppColor.secondary),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Nguyên nhân và chẩn đoán bệnh cơ tim giãn',
                                style: AppTextStyle.p.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  const WidgetSpan(
                                    child: Icon(
                                      Icons.watch_later_outlined,
                                      size: 15,
                                      color: AppColor.textGrey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 22/10/2022 137 lượt xem',
                                    style: AppTextStyle.z11.copyWith(
                                      color: AppColor.textGrey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]),
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
        ],
      ),
    );
  }
}
