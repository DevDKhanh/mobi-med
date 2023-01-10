import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobi_med/config/app_svg.dart';
import 'package:mobi_med/config/app_text_style.dart';
import 'package:mobi_med/screens/otp_screen.dart';
import 'package:mobi_med/widgets/control/button.dart';
import 'package:mobi_med/widgets/control/input_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordReController = TextEditingController();

  String valueConfirm = '';

  void handleForgotPassword() {
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
                  'Quên mật khẩu?',
                  style: AppTextStyle.h3,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 24,
                  ),
                  child: Text(
                    'Vui lòng nhập số điện thoại đăng ký để lấy lại mật khẩu.',
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
                      const SizedBox(height: 28),
                      Button(
                        text: Text('Tiếp tục',
                            style: AppTextStyle.z16
                                .copyWith(fontWeight: FontWeight.w700)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            handleForgotPassword();
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
