import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';
import 'package:mobi_med/config/app_validate.dart';

// ignore: must_be_immutable
class InputTextField extends StatefulWidget {
  final dynamic prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final String hintText;
  final TextEditingController textController;

  String? valueConfirm;
  final bool isRequired;
  final bool isPhone;

  final String txtIsRequired;
  final String txtIsPhone;
  final String textIsConfirm;
  void Function(String)? onChanged;

  InputTextField({
    super.key,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.hintText = 'Vui lòng nhập trường này',
    this.txtIsRequired = 'Vui lòng nhập không để trống',
    this.txtIsPhone = 'Định dạng số điện thoại không đúng',
    this.textIsConfirm = 'Mật khẩu không trùng khớp',
    this.isRequired = true,
    this.isPassword = false,
    this.valueConfirm,
    this.isPhone = false,
    required this.textController,
  });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColor.primary,
            ),
      ),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        controller: widget.textController,
        onChanged: (value) {
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        validator: (value) {
          //Kiểm tra input có bị bỏ trống không
          if (widget.isRequired && value!.isEmpty) {
            return widget.txtIsRequired;
          }

          //Kiểm tra value input có trùng với một value được so sánh hay không
          if (widget.valueConfirm != null && widget.valueConfirm != value) {
            return widget.textIsConfirm;
          }

          //Kiểm tra định dạng số điẹn thoại có hợp lệ hay không
          if (widget.isPhone &&
              !AppValidate.phoneNumberRegex.hasMatch(value!)) {
            return widget.txtIsPhone;
          }
          return null;
        },
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: _obscureText
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          filled: true,
          fillColor: AppColor.bgInput,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.bgInput),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColor.primary, width: 1.5),
          ),
        ),
      ),
    );
  }
}
