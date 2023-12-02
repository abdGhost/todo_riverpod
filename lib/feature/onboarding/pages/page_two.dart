import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/custom_outline_button.dart';
import 'package:todo_app_riverpod/feature/todo/pages/home_screen.dart';

import '../../../common/widgets/height_spacer.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
            const HeightSpacer(hieght: 50),
            CustomOutlineButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              height: AppConst.kHeight * 0.06,
              width: AppConst.kWidth * 0.9,
              color: AppConst.kLight,
              text: 'Login With Phone Number',
            )
          ],
        ),
      ),
    );
  }
}
