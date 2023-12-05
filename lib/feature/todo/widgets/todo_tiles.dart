import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_app_riverpod/common/widgets/reuseable_text.dart';
import 'package:todo_app_riverpod/common/widgets/width_spacer.dart';

class TodoTiles extends StatelessWidget {
  final Color? color;
  final String? title;
  final String? description;
  final String? start;
  final String? end;
  final Widget? editWidget;
  final void Function()? delete;
  final Widget? switcher;
  const TodoTiles({
    super.key,
    this.color,
    this.title,
    this.description,
    this.start,
    this.end,
    this.editWidget,
    this.delete,
    this.switcher,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(8.h),
            width: AppConst.kWidth,
            decoration: BoxDecoration(
                color: AppConst.kBKLight,
                borderRadius: BorderRadius.circular(AppConst.kRadius)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 5,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppConst.kRadius)),
                        //  TODO Change into dynamic color
                        color: color ?? AppConst.kGreen,
                      ),
                    ),
                    WidthSpacer(wdith: 15.w),
                    Padding(
                      padding: EdgeInsets.all(8.h),
                      child: SizedBox(
                        width: AppConst.kWidth * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReuseableText(
                              text: title ?? 'Title of TODO',
                              style: appStyle(
                                18,
                                AppConst.kLight,
                                FontWeight.bold,
                              ),
                            ),
                            const HeightSpacer(hieght: 3),
                            ReuseableText(
                              text: description ?? 'Description of TODO',
                              style: appStyle(
                                12,
                                AppConst.kLight,
                                FontWeight.bold,
                              ),
                            ),
                            const HeightSpacer(hieght: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: AppConst.kWidth * 0.3,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: AppConst.kGreyDK,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(AppConst.kRadius)),
                                    color: AppConst.kBKDark,
                                  ),
                                  child: Center(
                                    child: ReuseableText(
                                      text: '$start | $end',
                                      style: appStyle(
                                        12,
                                        AppConst.kGreen,
                                        FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                WidthSpacer(wdith: 20.w),
                                Row(
                                  children: [
                                    SizedBox(
                                      child: editWidget,
                                    ),
                                    WidthSpacer(wdith: 20.w),
                                    GestureDetector(
                                      onTap: delete,
                                      child: const Icon(
                                          MaterialCommunityIcons.delete_circle),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: switcher,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
