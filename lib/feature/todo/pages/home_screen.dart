import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/custom_textfield.dart';
import 'package:todo_app_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_app_riverpod/common/widgets/reuseable_text.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ReuseableText(
                        text: 'Dashboard',
                        style: appStyle(
                          18,
                          AppConst.kLight,
                          FontWeight.bold,
                        )),
                    Container(
                      width: 25.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: AppConst.kLight,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.add,
                          color: AppConst.kBKDark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const HeightSpacer(hieght: 15),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppConst.kWidth * 0.04),
                child: CustomTextfield(
                  keyboardType: TextInputType.name,
                  hintText: 'Search',
                  hintStyle: appStyle(16, AppConst.kBKDark, FontWeight.w600),
                  controller: searchController,
                  prefixIcon: Container(
                    padding: EdgeInsets.all(14.h),
                    child: GestureDetector(
                      onTap: null,
                      child: Icon(
                        AntDesign.search1,
                        color: AppConst.kGreyLight,
                      ),
                    ),
                  ),
                  suffixIcon: Icon(
                    FontAwesome.sliders,
                    color: AppConst.kGreyLight,
                  ),
                ),
              ),
              const HeightSpacer(hieght: 15),
            ],
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
