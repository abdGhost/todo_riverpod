import 'package:flutter/material.dart';

class WidthSpacer extends StatelessWidget {
  final double wdith;
  const WidthSpacer({super.key, required this.wdith});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wdith,
    );
  }
}
