import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import 'package:todo_app_riverpod/common/widgets/reuseable_text.dart';
import 'package:todo_app_riverpod/feature/auth/controllers/code_provider.dart';

class TestProvider extends ConsumerWidget {
  const TestProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var code = ref.watch(codeStateProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                ref.read(codeStateProvider.notifier).setStart('hi');
              },
              child: ReuseableText(
                text: 'Click me',
                style: appStyle(
                  18,
                  AppConst.kLight,
                  FontWeight.bold,
                ),
              ),
            ),
            Text(
              code,
              style: appStyle(28, AppConst.kLight, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
