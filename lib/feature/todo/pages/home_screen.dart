import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/custom_textfield.dart';
import 'package:todo_app_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_app_riverpod/common/widgets/reuseable_text.dart';
import 'package:todo_app_riverpod/common/widgets/width_spacer.dart';
import 'package:todo_app_riverpod/common/widgets/xpansion_tile.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 2, vsync: this);
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            children: [
              const HeightSpacer(hieght: 20),
              Row(
                children: [
                  Icon(FontAwesome.tasks, color: AppConst.kLight, size: 20),
                  const WidthSpacer(wdith: 10),
                  ReuseableText(
                    text: 'Today\'s Tasks',
                    style: appStyle(18, AppConst.kLight, FontWeight.bold),
                  ),
                ],
              ),
              const HeightSpacer(hieght: 25),
              Container(
                decoration: BoxDecoration(
                  color: AppConst.kLight,
                  borderRadius: BorderRadius.circular(AppConst.kRadius),
                ),
                child: TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      color: AppConst.kGreyLight,
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppConst.kRadius))),
                  labelPadding: EdgeInsets.zero,
                  labelColor: AppConst.kBlueLight,
                  isScrollable: false,
                  labelStyle:
                      appStyle(16, AppConst.kBlueLight, FontWeight.w700),
                  unselectedLabelColor: AppConst.kLight,
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: AppConst.kWidth * 0.5,
                        child: Center(
                          child: ReuseableText(
                            text: 'Pending',
                            style:
                                appStyle(18, AppConst.kBKDark, FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.only(left: 20.w),
                        width: AppConst.kWidth * 0.5,
                        child: Center(
                          child: ReuseableText(
                            text: 'Completed',
                            style:
                                appStyle(18, AppConst.kBKDark, FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const HeightSpacer(hieght: 20),
              SizedBox(
                height: AppConst.kHeight * 0.3,
                width: AppConst.kWidth,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppConst.kRadius)),
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        color: AppConst.kBKLight,
                        height: AppConst.kHeight * 0.3,
                      ),
                      Container(
                        color: AppConst.kGreen,
                        height: AppConst.kHeight * 0.3,
                      ),
                    ],
                  ),
                ),
              ),
              const HeightSpacer(hieght: 10),
              const XpansionTile(
                text: 'Tomorrow\'s task',
                text2: 'Tomorrow tasks are shown here',
                children: [],
              ),
              const HeightSpacer(hieght: 10),
              XpansionTile(
                text: DateTime.now()
                    .add(const Duration(days: 2))
                    .toString()
                    .substring(5, 10),
                text2: 'Tomorrow tasks are shown here',
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
