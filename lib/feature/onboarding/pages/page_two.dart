import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppConst.kGreyLight,
        width: AppConst.kWidth,
        height: AppConst.kHeight,
      ),
    );
  }
}
