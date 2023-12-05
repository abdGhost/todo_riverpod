import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/feature/todo/pages/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Todo Riverpod',
          theme: ThemeData(
            scaffoldBackgroundColor: AppConst.kBKDark,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
            primarySwatch: Colors.blue,
          ),
          themeMode: ThemeMode.dark,
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
