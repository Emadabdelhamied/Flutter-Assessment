import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/color_utils.dart';
import '../../../../core/utils/fonts_utils.dart';
import '../../../../core/utils/textstyle_utils.dart';
import '../../data/models/dummy_data_home.dart';

class CardOnlineWidget extends StatelessWidget {
  const CardOnlineWidget({super.key, required this.item});
  final OnlineExpert item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        // color: Colors.red,
        height: 85.h,
        width: 65,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            item.isOnLine == true ? Colors.green : blackLight),
                    width: 10,
                    height: 10,
                  ),
                ),
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(item.image!), fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              item.name!,
              style: TexStyleUtils.textStyleColor(
                color: blackLight,
                fontWeight: FontWeightUtils.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
