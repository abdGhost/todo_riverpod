import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/common/widgets/constant.dart';
import '../widgets/titles.dart';

class XpansionTile extends StatelessWidget {
  final String text;
  final String text2;
  final void Function()? onExpansionChange;
  final Widget? trailing;
  final List<Widget>? children;
  const XpansionTile({
    super.key,
    required this.text,
    required this.text2,
    this.onExpansionChange,
    this.trailing,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppConst.kBKLight,
          borderRadius: BorderRadius.all(Radius.circular(AppConst.kRadius))),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: AppConst.kBKLight),
        child: ExpansionTile(
          title: BottomTitles(text: text, text2: text2),
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.trailing,
          iconColor: AppConst.kLight,
          trailing: trailing,
          children: children!,
        ),
      ),
    );
  }
}
