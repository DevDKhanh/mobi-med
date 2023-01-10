import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobi_med/config/app_svg.dart';
import 'package:mobi_med/config/app_text_style.dart';
import 'package:mobi_med/screens/otp_screen.dart';
import 'package:mobi_med/widgets/control/button.dart';
import 'package:mobi_med/widgets/control/input_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordReController = TextEditingController();

  String valueConfirm = '';

  void handleSignup() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OtpScreen(
            title: 'Mã OTP của bạn',
            description: 'Nhập mã OTP được gửi tới SĐT: ',
            phoneNumber: phoneNumberController.text),
      ),
    );
  }

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
                const Text(
                  'Tạo tài khoản mới',
                  style: AppTextStyle.h3,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 24,
                  ),
                  child: Text(
                    'Đăng ký tài khoản sẽ giúp bạn sử dụng được đầy đủ các tính năng của MobiMed',
                    style: AppTextStyle.p.copyWith(color: AppColor.textGrey),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InputTextField(
                        keyboardType: TextInputType.phone,
                        textController: phoneNumberController,
                        hintText: 'Số điện thoại',
                        prefixIcon: const Icon(Icons.phone_outlined),
                        isPhone: true,
                        txtIsRequired: 'Vui lòng nhập số điện thoại',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InputTextField(
                        onChanged: (value) {
                          setState(() {
                            valueConfirm = passwordController.text;
                          });
                        },
                        textController: passwordController,
                        hintText: 'Nhập mật khẩu',
                        prefixIcon: const Icon(Icons.lock_outline),
                        isPassword: true,
                        txtIsRequired: 'Vui lòng nhập mật khẩu',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InputTextField(
                        textController: passwordReController,
                        hintText: 'Nhập lại mật khẩu',
                        txtIsRequired: 'Vui lòng nhập mật khẩu',
                        prefixIcon: const Icon(Icons.lock_outline),
                        isPassword: true,
                        valueConfirm: valueConfirm,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 36, bottom: 16),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Bằng cách nhấn nút "',
                              style: AppTextStyle.p.copyWith(
                                  color: AppColor.textGrey,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text: 'Đăng ký',
                                  style: AppTextStyle.p.copyWith(
                                      color: AppColor.secondary,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: '”, tôi xác nhận đã đọc và đồng ý với ',
                                  style: AppTextStyle.p.copyWith(
                                      color: AppColor.textGrey,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: 'Chính sách',
                                  style: AppTextStyle.p.copyWith(
                                      color: AppColor.secondary,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: ' & ',
                                  style: AppTextStyle.p.copyWith(
                                      color: AppColor.textGrey,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: 'Điều khoản sử dụng',
                                  style: AppTextStyle.p.copyWith(
                                      color: AppColor.secondary,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: ' của MobiMed.',
                                  style: AppTextStyle.p.copyWith(
                                      color: AppColor.textGrey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Button(
                        text: Text('Đăng ký',
                            style: AppTextStyle.z16
                                .copyWith(fontWeight: FontWeight.w700)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            handleSignup();
                          }
                        },
                      ),
                    ],
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
