import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobi_med/config/app_svg.dart';
import 'package:mobi_med/config/app_text_style.dart';
import 'package:mobi_med/router/Routes.dart';
import 'package:mobi_med/widgets/control/button.dart';
import 'package:mobi_med/widgets/control/input_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  void handleLogin() {
    print('${phoneNumberController.text} ${passwordController.text}');
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
            child: Center(
              child: Column(
                // mainAxisSize: MainAxisSize.min,
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
                    'Xin chào, Nguyen Tien Hai',
                    style: AppTextStyle.h3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 24,
                    ),
                    child: Text(
                      'Đăng nhập ngay để trải nghiệm các tính năng dành riêng cho thành viên MobiMed.',
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
                          textController: passwordController,
                          hintText: 'Mật khẩu',
                          prefixIcon: const Icon(Icons.lock_outline),
                          isPassword: true,
                          txtIsRequired: 'Vui lòng nhập mật khẩu',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 36, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.forgotPassword);
                                },
                                child: Text(
                                  'Quên mật khẩu?',
                                  textAlign: TextAlign.left,
                                  style: AppTextStyle.z14.copyWith(
                                    color: AppColor.secondary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Button(
                          text: Text('Đăng nhập',
                              style: AppTextStyle.z16
                                  .copyWith(fontWeight: FontWeight.w700)),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              handleLogin();
                            }
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.signupPage);
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: 'Bạn chưa có tài khoản? ',
                                  style: AppTextStyle.z14.copyWith(
                                      color: AppColor.textNeutral,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text: 'Đăng ký ngay',
                                      style: AppTextStyle.z14.copyWith(
                                          color: AppColor.secondary,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
