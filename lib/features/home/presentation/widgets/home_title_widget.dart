import 'package:flutter/material.dart';
import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/fonts_utils.dart';
import '../../../../core/utils/textstyle_utils.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TexStyleUtils.textStyleColor(
            size: 16,
            fontWeight: FontWeightUtils.medium,
            color: blackLight,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.more_horiz,
          color: blackLight,
        )
      ],
    );
  }
}
