import 'package:flutter/material.dart';

class HeightSpacer extends StatelessWidget {
  final double hieght;
  const HeightSpacer({super.key, required this.hieght});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght,
    );
  }
}
