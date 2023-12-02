import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/common/widgets/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Flutter Riverpod',
          style: appStyle(
            30,
            Colors.blue,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
