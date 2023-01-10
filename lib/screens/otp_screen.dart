import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_svg.dart';
import 'package:mobi_med/config/app_text_style.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {
  final String title;
  final String phoneNumber;
  final String description;

  const OtpScreen({
    super.key,
    required this.title,
    required this.description,
    required this.phoneNumber,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: AppColor.light,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 16,
                  ),
                  child: SvgPicture.asset(
                    AppSVG.logo,
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                ),
                Text(
                  widget.title,
                  style: AppTextStyle.h3,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 24,
                  ),
                  child: Text(
                    '${widget.description} ${widget.phoneNumber}',
                    style: AppTextStyle.p.copyWith(color: AppColor.textGrey),
                  ),
                ),
                OtpTextField(
                  numberOfFields: 6,
                  textStyle: const TextStyle(fontSize: 20),
                  filled: true,
                  fillColor: AppColor.bgInput,
                  enabledBorderColor: AppColor.bgInput,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  fieldWidth: MediaQuery.of(context).size.width / 8,
                  focusedBorderColor: AppColor.primary,
                  showFieldAsBox: true,
                  onSubmit: (String verificationCode) {
                    print(verificationCode);
                  }, // end onSubmit
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Bạn chưa nhận được mã. Gửi lại (0:37)',
                      style: AppTextStyle.z14,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Đổi SĐT',
                        style: AppTextStyle.z14
                            .copyWith(color: AppColor.secondary),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
