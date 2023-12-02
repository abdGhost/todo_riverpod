import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';

class CustomOutlineButton extends StatelessWidget {
  final Function()? onTap;
  final double height;
  final double width;
  final Color? color1;
  final Color color;
  final String text;
  const CustomOutlineButton({
    super.key,
    this.onTap,
    required this.height,
    required this.width,
    this.color1,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color1,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(width: 1, color: color)),
        child: Center(
            child: Text(
          text,
          style: appStyle(16, AppConst.kLight, FontWeight.w500),
        )),
      ),
    );
  }
}
