import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';

class CustomTextfield extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle hintStyle;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  const CustomTextfield({
    super.key,
    required this.keyboardType,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintStyle,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHeight * 0.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConst.kRadius),
        color: AppConst.kLight,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        cursorHeight: 25,
        onChanged: onChanged,
        style: appStyle(18, AppConst.kBKDark, FontWeight.w600),
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixIconColor: AppConst.kBKDark,
          hintStyle: hintStyle,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 0.5, color: AppConst.kRed),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 0.5, color: AppConst.kGreyDK),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 0.5, color: AppConst.kGreyDK),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 0.5, color: AppConst.kBKDark),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(width: 0.5, color: AppConst.kBKDark),
          ),
        ),
      ),
    );
  }
}
