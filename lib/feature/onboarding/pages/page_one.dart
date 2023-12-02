import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_app_riverpod/common/widgets/reuseable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppConst.kBKDark,
        width: AppConst.kWidth,
        height: AppConst.kHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset(
                'assets/images/todo.png',
              ),
            ),
            const HeightSpacer(hieght: 20),
            Column(
              children: [
                ReuseableText(
                  text: 'ToDo with Riverpod',
                  style: appStyle(
                    30,
                    AppConst.kLight,
                    FontWeight.bold,
                  ),
                ),
                const HeightSpacer(hieght: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    'Welcome! Do you want to create task with ease...',
                    textAlign: TextAlign.center,
                    style: appStyle(
                      16,
                      AppConst.kGreyLight,
                      FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
