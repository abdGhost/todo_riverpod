import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_app_riverpod/common/widgets/reuseable_text.dart';
import 'package:todo_app_riverpod/common/widgets/width_spacer.dart';

class BottomTitles extends StatelessWidget {
  final String text;
  final String text2;
  const BottomTitles({super.key, required this.text, required this.text2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConst.kWidth,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return Container(
                    width: 5,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppConst.kRadius)),
                      //  TODO Change into dynamic color
                      color: AppConst.kGreen,
                    ));
              },
            ),
            const WidthSpacer(wdith: 15),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReuseableText(
                    text: text,
                    style: appStyle(20, AppConst.kLight, FontWeight.bold),
                  ),
                  const HeightSpacer(hieght: 10),
                  ReuseableText(
                    text: text2,
                    style: appStyle(12, AppConst.kLight, FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
