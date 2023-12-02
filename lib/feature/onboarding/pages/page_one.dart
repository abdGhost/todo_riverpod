import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppConst.kBKDark,
        width: AppConst.kWidth,
        height: AppConst.kHeight,
      ),
    );
  }
}
